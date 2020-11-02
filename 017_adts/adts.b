implement Adts;

include "sys.m";
include "draw.m";
include "adts.m";

B: adt {
    year: int;
    month: string;
    day: int;
    age: fn(me: B): int;
};

init(ctxt: ref Draw->Context, args: list of string) {
    sys := load Sys Sys->PATH;
    bdate: B;
    bdate.year = 1928;
    bdate.month = "August";
    bdate.day = 6;

    sys->print("Age is: %d\n", bdate.age(bdate));

    date := (0, "", 0);
    date = bdate;
    age := bdate.age(bdate);

}

B.age(me: B): int {
    return 2020 - me.year;
}