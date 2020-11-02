implement TestModules;

include "sys.m";
include "draw.m";
include "modules.m";
include "test_modules.m";

sys: Sys;
modules: Modules;
print: import sys;
Mod: import modules;

init(nil: ref Draw->Context, nil: list of string) {
    bts: ref Modules->Mod;
    sys = load Sys Sys->PATH;
    modules = load Modules Modules->PATH;
    modules->knowledge = "Learn the Limbo Programming Language";

    print("modules->DESCR [%s]\n", modules->DESCR);
    print("Modules->DESCR [%s]\n", Modules->DESCR);
    print("modules->knowledge [%s]\n", modules->knowledge);

    bts = Mod.new(nil);

}