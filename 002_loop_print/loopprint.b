implement LoopPrint;

include "sys.m";
include "draw.m";
include "loopprint.m";

init(ctxt: ref Draw->Context, args: list of string) {
    sys: Sys;
    sys = load Sys Sys->PATH;
    n := 10;
    sys->print("Hello Bengt!\n");
    while (n > 0) {
        n = n - 1;
        sys->print("n = %d\n", n);
    }
    sys->print("Bye Bengt!\n");
}