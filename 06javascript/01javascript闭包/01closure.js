function Circle(r){
    this.r = r;
}

Circle.PI = 3.14159;
Circle.prototype.area = function(){
    return Circle.PI * this.r * this.r;
}

var c = new Circle(2.0);
alert(c.area());
