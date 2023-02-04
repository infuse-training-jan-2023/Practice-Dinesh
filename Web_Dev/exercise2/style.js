const button = document.getElementById('button');

const printtime = () => {
    const date = new Date();
    const hours = date.getHours();
    const minutes = date.getMinutes();
    const seconds = date.getSeconds();
    const current_time = `${hours < 10 ? '0' + hours : hours}:${minutes < 10 ? '0' + minutes : minutes}:${seconds < 10 ? '0' + seconds : seconds}`;
    const element2 = document.getElementById("element2");
    element2.innerHTML = current_time;
}
setInterval(printtime, 1000);

