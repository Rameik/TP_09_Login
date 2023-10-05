// Al presionar una tecla
// window.addEventListener('keydown', colorContraseña());

const campoUsuario = {
    fuente: document.getElementById('username'),
    contador: 0
}

const contraseña = {
    fuente: document.getElementById('contraseña'),
    contador: 0
}

const contraseña2 = {
    fuente: document.getElementById('contraseña2'),
    contador: 0
}

function iniciarCondiciones(parametro) {
    parametro.fuente.addEventListener('keydown', function(event) {
        if (event.key.length === 1) {
          parametro.contador++;
        }
    });
}

iniciarCondiciones(contraseña);
iniciarCondiciones(contraseña2);


// Ejecutando las funciones

function ejecutarInterval() {
    if (contraseña.contador > 0) {
        colorCaracteres();
        colorMayuscula();
        colorCespeciales();
    }
    if(contraseña2.contador > 0){
        contraseñasCoinciden();
    }
    if(campoUsuario.contador > 0){
        checkUsuario();
    }
}

setInterval(ejecutarInterval, 500);


// Fijarse si hay mas de 8 caracteres

function colorCaracteres(){
    const campoContraseña = document.getElementById('contraseña').value;
    const caracteres = document.getElementById('caracteres');

    if(campoContraseña.length >= 8){
        caracteres.style.color = 'green';
    }
    else{
        caracteres.style.color = 'red';
    }
}

// Fijarse si hay una mayuscula

function colorMayuscula() {
    const campoContraseña = document.getElementById('contraseña').value;
    const mayuscula = document.getElementById('mayuscula');

    if(/[A-Z]/.test(campoContraseña)){
        mayuscula.style.color = 'green';
    }
    else{
        mayuscula.style.color = 'red';
    }
}

// Fijarse si las contraseñas coinciden

function colorCespeciales() {
    const campoContraseña = document.getElementById('contraseña').value;
    const cespecial = document.getElementById('cespecial');

    if(/[^a-z^A-Z^0-9]/.test(campoContraseña)){
        cespecial.style.color = 'green';
    }
    else{
        cespecial.style.color = 'red';
    }
}

// Fijarse si las contraseñas coinciden

function contraseñasCoinciden() {
    const campoContraseña = document.getElementById('contraseña').value;
    const campoContraseña2 = document.getElementById('contraseña2').value;
    const coincidir = document.getElementById('coincidir');

    if(campoContraseña === campoContraseña2 && campoContraseña2 != ""){
        coincidir.style.color = 'green';
    }
    else{
        coincidir.style.color = 'red';
    }
}