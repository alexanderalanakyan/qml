export function parseCircularList(list) {
    if ( typeof list === "object") {
        for (var k in list) {
            var v = list[k];
            console.log( k + ":" + v)
        }
    }
    return ;
}