// set up the base pattern
function createCustomTrianglify() {
    var w = window,
    d = document,
    e = d.documentElement,
    g = d.getElementsByTagName('body')[0],
    x = w.innerWidth || e.clientWidth || g.clientWidth,
    y = w.innerHeight || e.clientHeight || g.clientHeight;

    var pattern = Trianglify({
        height: y,
        width: x,
        cell_size: 40 + Math.random() * 100,
        //cell_size: 60,
        variance: "0.73",
        x_colors: 'random' //'PuOr',
        // seed: 'pfoz2'
    });
    // canvas
    pattern.canvas(document.getElementById('headerCanvas'));
};

createCustomTrianglify();

window.onresize = createCustomTrianglify;