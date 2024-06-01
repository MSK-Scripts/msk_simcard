logging = function(code, ...)
	if not Config.Debug then return end
    MSK.Logging(code, ...)
end

GithubUpdater = function()
    local GetCurrentVersion = function()
	    return GetResourceMetadata(GetCurrentResourceName(), "version")
    end

	local isVersionIncluded = function(Versions, cVersion)
		for k, v in pairs(Versions) do
			if v.version == cVersion then
				return true
			end
		end

		return false
	end
    
    local CurrentVersion = GetCurrentVersion()
    local resourceName = "^0[^2"..GetCurrentResourceName().."^0]"

    if Config.VersionChecker then
        PerformHttpRequest('https://raw.githubusercontent.com/Musiker15/VERSIONS/main/Simcard.json', function(errorCode, jsonString, headers)
            print("###############################")
			if not jsonString then print(resourceName .. '^1Update Check failed! ^3Please Update to the latest Version: ^9https://keymaster.fivem.net/^0') print("###############################") return end

			local decoded = json.decode(jsonString)
            local version = decoded[1].version

            if CurrentVersion == version then
                print(resourceName .. '^2 ✓ Resource is Up to Date^0 - ^5Current Version: ^2' .. CurrentVersion .. '^0')
            elseif CurrentVersion ~= version then
                print(resourceName .. '^1 ✗ Resource Outdated. Please Update!^0 - ^5Current Version: ^1' .. CurrentVersion .. '^0')
                print('^5Latest Version: ^2' .. version .. '^0 - ^6Download here: ^9https://keymaster.fivem.net/^0')
				print('')
				if not string.find(CurrentVersion, 'beta') then
					for i=1, #decoded do 
						if decoded[i]['version'] == CurrentVersion then
							break
						elseif not isVersionIncluded(decoded, CurrentVersion) then
							print('^1You are using an ^3Unsupported VERSION^1 of ^0' .. resourceName)
							break
						end

						if decoded[i]['changelogs'] then
							print('^3Changelogs v' .. decoded[i]['version'] .. '^0')

							for _, c in ipairs(decoded[i]['changelogs']) do
								print(c)
							end
						end
					end
				else
					print('^1You are using the ^3BETA VERSION^1 of ^0' .. resourceName)
				end
            end
            print("###############################")
        end)
    else
        print(resourceName .. '^2 ✓ Resource loaded^0 - ^5Current Version: ^1' .. CurrentVersion .. '^0')
    end
end
GithubUpdater()