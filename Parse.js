function parseCircularList(list) {
    const newList = new Map()
    if ( typeof list === "object") {
        for (var k in list) {
            var v = list[k];
            newList.set(k,v)
        }
    }
    return newList;
}