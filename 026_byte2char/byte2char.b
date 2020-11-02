implement Byte2Char;

include "sys.m";
include "draw.m";
include "byte2char.m";

sys: Sys;

init(nil: ref Draw->Context, nil: list of string) {
    unistring: string;
    sys = load Sys Sys->PATH;
    mu := array[] of {byte 16rce, byte 16rbc};
    (unichar, utflen, status) := sys->byte2char(mu, 0);
    unistring[len unistring] = unichar;
    if (status == 0) {
        sys->print("byte2char failed, invalid UTF-8 sequence\n");
    }
    else {
        sys->print("[%d] bytes used to create Unicode character [%s]\n", utflen, unistring);
    }
}