implement CaseWay;

include "sys.m";
include "draw.m";
include "case_way.m";

init(ctxt: ref Draw->Context, args: list of string) {
    sys: Sys;
    print: import sys;
    sys = load Sys Sys->PATH;

    n : int = 34;

    case(n) {
        0 to 9 => print("Numeric Digit");
        'a' to 'z' or 'A' to 'Z' => print("Alpha character");
        * => print("Is not an alphanumeric character\n");
    }

    name: string = "Jane";
    case(name) {
        "jane" or "JANE" => print("Hello Jane!");
        * => print("Hi there.\n");
    }
}