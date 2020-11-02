implement Char2Byte;

include "sys.m";
include "draw.m";
include "char2byte.m";

sys: Sys;

init(ctxt: ref Draw->Context, args: list of string) {
    i, n: int;
    sys = load Sys Sys->PATH;

    mu := array[Sys->UTFmax] of byte;
    if ((n = sys->char2byte(16r3bc, mu, 0)) == 0) {
        sys->print("char2byte failed, buffer too small\n");
    } else {
        sys->print("UTF-8 sequence is:\n");
    }
    for(i = 0; i < n; i++) {
        sys->print("\t\t[%x]\n", int mu[i]);
    }

    sys->print("i.e. :\n");
    for(i = 0; i < n; i++) {
        sys->print("\t\t[");
        bitprint(8, int mu[i]);
        sys->print("]\n");
    }
}

bitprint(nbits, number: int) {
    for (i := nbits-1; i >= 0; i--) {
        sys->print("%d", (number >> i)&1);
    }
}