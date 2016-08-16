var Circle = function(){
    var obj = new Object();
    obj.PI = 3.14159;
    obj.area = function(r){
        return this.PI * r * r;
    }

    return obj;
}

var c = new Circle();
alert(c.area(2));
