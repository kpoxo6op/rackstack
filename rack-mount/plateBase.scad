
include <./common.scad>

module plateBase(U, plateThickness, screwType, screwToXEdge=4, screwToYEdge=4, filletR=2) {

    assert(floor(U) == U && U > 0)
    assert(plateThickness > 0);

    screwDx = rackMountScrewWidth;
    screwDy = uDiff * U;

    plateLength = screwDx + 2*screwToXEdge;
    plateHeight = screwDy + 2*screwToYEdge;

    translate(v=[0,0,-plateThickness]) // easier to work with
    difference() {
        base();

        mirror4XY(p=[screwToXEdge, screwToYEdge], dx=screwDx, dy=screwDy)
        cylinder(r=screwRadiusSlacked(screwType), h=plateThickness*2, center=true);
    }

    module base() {
        minkowski() {
            translate(v=[filletR, filletR, 0])
            cube(size = [plateLength-2*filletR, plateHeight-2*filletR, plateThickness]);

            cylinder(r=filletR, h=eps);
        }
    }

}

plateBase(U=2, plateThickness=3, screwType="m4", filletR=2);