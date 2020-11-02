implement Modules;

include "sys.m";
include "draw.m";
include "modules.m";

learn(init: string) {
}

Mod.new(ctxt: ref Draw->Context): ref Mod {
    d: Mod;
    return ref d;
}