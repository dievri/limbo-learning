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
    print: import sys;
    sys = load Sys Sys->PATH;
    command := hd tl args;
    exec_os := load Os "/dis/os.dis";
    exec_os -> init(ctxt, list of {"os", command});
}