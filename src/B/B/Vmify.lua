local Step = require("Kepler.step");
local SecureCompiler = require("VM.compiler");

local Vmify = Step:extend();
Vmify.Description = "This Step will Compile your script into a fully-custom (not a half custom like other lua obfuscators) Bytecode Format and emit a vm for executing it.";
Vmify.Name = "Vmify";

Vmify.SettingsDescriptor = {
	
}

function Vmify:init(settings)
	
end

function Vmify:apply(ast)
    -- Create Compiler
	local compiler = SecureCompiler:new();
    -- Compile the Script into a bytecode vm
    return compiler:compile(ast);
end

return Vmify;
