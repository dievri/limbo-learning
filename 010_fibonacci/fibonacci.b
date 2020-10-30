implement Fibonacci;

include "sys.m";
include "draw.m";

sys: Sys;
MAX: con 50;

Fibonacci: module {
    init: fn(nil: ref Draw->Context, nil: list of string);
};

init(nil: ref Draw->Context, nil: list of string) {
    sys = load Sys Sys->PATH;

    sys->print("0  .\n1 ..\n");
    f(0, 1);
}

f(a, b: int) {
    sys->print("%-3d", a + b);
    for (i := 0; i <= a + b; i++) {
        sys->print(".");
    }
    sys->print("\n");

    if(a + b < MAX) {
        f(b, a + b);
    }
}