implement AdtSelf;

include "sys.m";
include "draw.m";
include "adt_self.m";

YourData: adt {
    pkt_no: int;
    nmpkts: int;

    filter: fn(x: self ref YourData, method: string);
    handler: fn(x: self ref YourData): int;
};

YourData.filter(x: self ref YourData, method: string) {

}

YourData.handler(x: self ref YourData): int {
    sys := load Sys Sys->PATH;
    sys->print("Packet number is %d\n", x.pkt_no);
    return x.pkt_no;
}


init(ctxt: ref Draw->Context, args: list of string) {
    yourdata: YourData;
    data := (10, 20);
    yourdata = data;
    yd := ref yourdata;

    yd.handler();

}