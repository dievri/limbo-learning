implement NestedIf;

include "sys.m";
include "draw.m";
include "nested_if.m";

init(ctxt: ref Draw->Context, args: list of string) {
    sys: Sys;
    print: import sys;

    sys = load Sys Sys->PATH;
    a := 0;
    b := 2;
    c := 0;
    if (a < 1)
        if (b > 1)
            if (c < 1)
                print("a < 1, b > 1 and c < 1\n");
    # This else belongs to the if (c < 1) statement
    else
        print("a < 1, b > 1 but c >=1\n");
}