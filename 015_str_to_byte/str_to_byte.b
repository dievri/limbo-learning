implement StrToByte;

include "sys.m";
include "draw.m";
include "str_to_byte.m";

init(ctxt: ref Draw->Context, args: list of string) {
    sys: Sys;
    sys = load Sys Sys->PATH;

    english := "ant";
    greek := "μυρμήγκι";
    sys->print("Length of variable english is [%d] Unicode chars\n", len english);
    sys->print("Length of variable greek is [%d] Unicode chars\n", len greek);

    englishbytes := array of byte english;
    greekbytes := array of byte greek;

    sys->print("Length of variable englishbytes is [%d] Unicode chars\n", len englishbytes);
    sys->print("Length of variable greekbytes is [%d] Unicode chars\n", len greekbytes);
}