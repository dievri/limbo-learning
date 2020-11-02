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

    # redirect stdout & stderr to file 
    #sys->create("response", sys->ORDWR, 8r644);
    #filefd := sys->open("response", sys->OWRITE);

    # redirect stdout & stderr to /dev/cons
    consfd := sys->open("/dev/cons", sys->OWRITE);

    sys->dup(consfd.fd, 1);
    sys->dup(consfd.fd, 2);
    exec_os -> init(ctxt, list of {"os", command});
}