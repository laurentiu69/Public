const version = document.querySelector("#version");
const time = document.lastModified;
version.textContent = "v.1.0";
// var canvas=document.getElementById("myCanvas");
// console.log(canvas);
//
// var path = new Path();
// path.strokeColor = 'black';
// var start = new Point(100,100);
// path.moveTo(start);
// path.lineTo(start + [100, -50]);

// var canvas = document.getElementById("myCanvas");
// var context = canvas.getContext("2d");
// context.moveTo(0, 0);
// context.lineTo(400, 400);
// context.strokeStyle = "#ff0000";
// context.stroke();
//

// Create a Paper.js Path to draw a line into it:
if (!true) {

//*************** JUST FOR ERROR CHECKING

    //clear the canvas
    project.activeLayer.removeChildren();
    project.clear();

    x = Math.floor(Math.random() * view.size.width) + 1;
    y = Math.floor(Math.random() * view.size.height) + 1;
    center = new Point(x, y);
    animatedCircle = new Path.Circle(center, 100);

    //bitwise OR. Gives value in the range 0-255 which is then converted to base 16 (hex).
    var randRED = (Math.random() * (256) | 0).toString(16);
    console.log(Math.random() * (256), Math.random() * (256) | 0, Math.random() * (256) | 0.
    toString(16)
)
    ;
    var randGREEN = (Math.random() * (256) | 0).toString(16);
    var randBLUE = (Math.random() * (256) | 0).toString(16);
    animatedCircle.fillColor = "#" + randRED + randGREEN + randBLUE;

    var text = new paper.PointText(center);
    //      text.content = "The "+event.key+" key was pressed "+view.size+" "+view.size.width;


}

function onFrame(event) {
    animatedCircle.fillColor.hue += 1;
    animatedCircle.scale(0.9);
}


//**************
}