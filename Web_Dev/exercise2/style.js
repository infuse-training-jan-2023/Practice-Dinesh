const element2 = document.getElementById('element2');
const button = document.getElementById('button');


let  printtime = ()=>{
    var date = new Date();
    var current_time = date.getHours()+":"+date.getMinutes()+":"+ date.getSeconds();
    element2.innerHTML=current_time;
}

setInterval(printtime, 1000);

