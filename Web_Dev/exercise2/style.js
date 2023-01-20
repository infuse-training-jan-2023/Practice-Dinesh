let p2 = document.getElementById('p2');
let button = document.getElementById('button');


let  printtime = ()=>{
    var date = new Date();
    var current_time = date.getHours()+":"+date.getMinutes()+":"+ date.getSeconds();
    p2.innerHTML=current_time;
}

setInterval(printtime, 1000);

