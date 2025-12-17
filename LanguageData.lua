local languageData = {
	["en"] = {
		["warncommandsetup"] = "%s is not set up properly, check TabletScript and add functionality to the command.",
		["langerror"] = "LANGERROR: Key '%s' missing.",
		["datastoregeterror"] = "DataStoreModule: Failed to get data for %s (Attempt %d/%d)",
		["datastoremaxretries"] = "DataStoreModule: All %d attempts failed to get data for %s."
	},
	["pl"] = {
		["warncommandsetup"] = "%s nie jest ustawiona, sprawdź TabletScript i dodaj funkcjonalność komendy.",
		["langerror"] = "LANGERROR: Brakuje klucza '%s'.",
		["datastoregeterror"] = "DataStoreModule: Nie udało się wczytać danych dla %s (Próba %d/%d)",
		["datastoremaxretries"] = "DataStoreModule: Wszystkie %d prób zawiodło w wczytywaniu danych dla %s."
	}
}

return languageData
