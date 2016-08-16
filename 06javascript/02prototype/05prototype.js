var dom = function(){

};

// 1 静态方法
// 2 只能用类名进行调用
// 3 静态方法中不能使用this变量来调用对象的其他属性
dom.Show = function(){
    alert("Show Message");
}

// 1 非静态方法
// 2 只有实例化后才能使用
// 3 其方法内部可以this引用对象自身中的其他属性
dom.prototype.Display = function(){
    alert("Property Message");
}

// 报错
// dom.Display();
dom.Show();
var d = new dom();
d.Display();

// 报错
// d.Show();
