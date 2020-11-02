Modules: module {
    PATH: con "modules.dis";
    DESCR: con "Self-learning Limbo example";
    learn: fn(init: string);
    knowledge: string;

    Mod: adt {
        new: fn(ctxt: ref Draw->Context): ref Mod;
        name: string;
        B, E, J, P: con 1 << iota;
    };
};