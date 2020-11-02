implement Tuples;

include "sys.m";
include "draw.m";
include "tuples.m";

init(ctxt: ref Draw->Context, args: list of string) {
    sys := load Sys Sys->PATH;
    a := ("Jane", "Doe", 22, 3.8);
    major: string;
    gpa: real;
    personalinfo := ("R. James", "engineering", "tree", 10.0, "art", "music");
    (nil, major, nil, gpa, nil, nil) = personalinfo;
    sys->print("%s\n", major);
    sys->print("%f\n", gpa);
}
