var person = function(){
    // 变量的作用域为函数内部，外部无法访问
    var name = "default";
    return {
        getName:function(){
            return name;
        }
        ,
        setName:function(newName){
            name = newName;
        }
    }
}();


