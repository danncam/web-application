function mudarCor(novaCor) {
    var elemento = document.getElementById("para1");
    elemento.style.color = novaCor;
    console.log(novaCor);
}

function getname() {
    var usrlogin = document.getElementById("login_id").value;
    document.getElementById("hiddencontent").innerHTML = usrlogin; 
}

