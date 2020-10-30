implement OsCall;

include "sys.m";
include "draw.m";

sys: Sys;

OsCall : module {
    init: fn(ctxt: ref Draw->Context, args: list of string);
};

Os: module
{
	init:	fn(nil: ref Draw->Context, nil: list of string);
};


init(ctxt: ref Draw->Context, args: list of string) {
    sys: Sys;
    path := hd tl args;
    cmd := list of {"os", path};
    pump := load Os "/dis/os.dis";
    pump -> init(ctxt, cmd);
}