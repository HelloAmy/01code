var html = new Object();
html.Name = 'Object';
html.Success = function(){
    this.Say = function(){
        alert('Hello, World');
    }
    alert('Obj Success');
}
