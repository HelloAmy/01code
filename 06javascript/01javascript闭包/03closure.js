var Circle = new Object();
Circle.PI = 3.14159;
Circle.Area = function(r){
    return this.PI * r * r;
}

alert(Circle.Area(2.0));
