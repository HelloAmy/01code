function Person(){
    var name = "default";
    return {
        getName:function(){
                    return name;
                },
        setName:function(newName){
                    name = newName;
                }
    }
};

var p = new Person();
p.setName("Tom");
alert(p.getName());

var Jack = function(){};

// 继承自Person
Jack.prototype = new Person();

// 添加私有方法
Jack.prototype.Say = function(){
    alert("Hello, my name is Jack");
};


