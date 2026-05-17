--! strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("LanguageChangedEvent")

local FALLBACK_LANG = "en"
local languageData = require(script:WaitForChild("LanguageData"))
local currentLang : string = "pl"
local LangModule = {}

function LangModule.get(key: string, ...: any): string
	local text : string = languageData[currentLang] and languageData[currentLang][key]
	
	if text then
		return string.format(text, ...)
	end

	local fallbackText : string = languageData[FALLBACK_LANG] and languageData[FALLBACK_LANG][key]

	if fallbackText then
		if currentLang ~= FALLBACK_LANG then
			warn(string.format(
				"LangModule: Key '%s' not found in language '%s', using fallback '%s'.",
				key, currentLang, FALLBACK_LANG
				))
		end
		return string.format(fallbackText, ...)
	end

	local errorText = languageData[FALLBACK_LANG] and languageData[FALLBACK_LANG]["langerror"]
	warn(string.format("LangModule: Key '%s' not found in any language.", key))
	
	if errorText then
		return string.format(errorText, key)
	else
		error("CRITERR: LangModule's LanguageData is probably corrupted. Key: '"..key.."'")
	end
end

return LangModule
