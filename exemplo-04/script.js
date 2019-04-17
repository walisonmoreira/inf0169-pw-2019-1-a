function calcularIdade() {
    var idadeElement = window.document.getElementById("idade");
    var idadeString = idadeElement.value;
    console.log("idadeString = " + idadeString);
    var idade = parseInt(idadeString);
    if (idade >= 18) {
        alert("MAIOR de idade.");
    } else {
        alert("MENOR de idade.");
    }
}