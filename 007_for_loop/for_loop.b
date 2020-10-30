implement ForLoop;

include "sys.m";
include "draw.m";
include "for_loop.m";

init(ctxt: ref Draw->Context, args: list of string) {
    sys: Sys;
    print: import sys;
    sys = load Sys Sys->PATH;

    for (i := 1; i <= 10; i++) {
        print("i = %d\n", i);
    }
}