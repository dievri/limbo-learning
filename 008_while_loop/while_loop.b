implement WhileLoop;

include "sys.m";
include "draw.m";
include "while_loop.m";

init(ctxt: ref Draw->Context, args: list of string) {
    sys: Sys;
    print: import sys;
    sys = load Sys Sys->PATH;
    n : int = 1;
    while (n < 100) {
        if (n % 5) {
            n++;
            continue;
        }
        print("%d\n", n++);
    }
}