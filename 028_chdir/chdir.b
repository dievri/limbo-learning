implement Chdir;

include "sys.m";
include "draw.m";
include "chdir.m";

init(ctxt: ref Draw->Context, args: list of string) {
    sys := load Sys Sys->PATH;
    if (sys->chdir("/n/remote") < 0) {
        sys->print("Chdir failed: %r\n");
    }
}