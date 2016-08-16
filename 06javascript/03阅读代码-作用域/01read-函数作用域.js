// js函数作用域
var dom = function(){
    var Name = "Defalult";
    this.Sex = "Boy";
    this.success = function(){
        alert("Success");
    }
}

alert(dom.Name);
alert(dom.sex);
