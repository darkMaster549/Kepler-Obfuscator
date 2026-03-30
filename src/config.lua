local VERSION = "Alpha v0.1";
local NAME    = "Kepler";
local BY      = "Levno_710/Kepler";

return {
	Name = NAME,
	NameUpper = string.upper(NAME),
	NameAndVersion = string.format("%s %s", NAME, VERSION),
	Version = VERSION;
	Watermark = string.format("This File Was Generated Using The %s %s by %s", NAME, VERSION, BY);
	
	IdentPrefix = "__prometheus_";
	
	SPACE = " "; 
	TAB   = "\t";
}
