

function FormatRefID(RefID) {

    if (RefID.indexOf("(") > -1) {
        var RefID = RefID.substr(1, RefID.length);
    }
    if (RefID.indexOf(")") > -1) {
        var RefID = RefID.substr(0, RefID.length - 1);
    }
    if (RefID.indexOf("p.") > -1) {
        var RefID = RefID.substr(0, (RefID.length - 8));
    }
    var newRefID = RefID
    return newRefID
}
