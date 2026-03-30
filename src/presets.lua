-- I only Copy the Two of Presets of Original Prometheus because it's too hard to make.
return {
    ["Minify"] = {
        LuaVersion = "Lua51";
        VarNamePrefix = "";
        NameGenerator = "MangledShuffled";
        PrettyPrint = false;
        Seed = 0;
        Steps = {}
    };
    ["Vm"] = {
        LuaVersion = "Lua51";
        VarNamePrefix = "";
        NameGenerator = "MangledShuffled";
        PrettyPrint = false;
        Seed = 0;
        Steps = {
            {
                Name = "Vmify";
                Settings = {};
            },
            {
                Name = "WrapInFunction";
                Settings = {
                    Iterations = 1;
                }
            }
        }
    };
}
