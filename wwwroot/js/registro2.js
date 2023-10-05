
iniciarCondiciones(campoUsuario);

// Fijarse si el nombre esta disponible

function checkUsuario(){
    const campoUsuario = document.getElementById('username').value;
    let listaUsuarios = document.getElementById('listaUsuarios').innerHTML;
    const check = document.getElementById('check-usuario');

    const regex = /<p>(.*?)<\/p>/g;
    let matches = [...listaUsuarios.matchAll(regex)];

    listaUsuarios = matches.map(match => match[1]);

    if(listaUsuarios.length == 0){
        check.style.color = 'green';
    }
    for(const usuario of listaUsuarios){
        if(usuario == campoUsuario){
            check.style.color = 'red';
            break;
        }
        else{
            check.style.color = 'green';
        }
    }
}


// Cancelar el formulario si alguna condición esta en rojo

function validarFormulario() {
    const mostrarError = document.getElementById('mostrar-error'),
    checkUsuario = document.getElementById('check-usuario'),
    cespecial = document.getElementById('cespecial'),
    caracteres = document.getElementById('caracteres'),
    coincidir = document.getElementById('coincidir'),
    mayuscula = document.getElementById('mayuscula');


    if(checkUsuario.style.color == 'red' || cespecial.style.color == 'red' || caracteres.style.color == 'red' || coincidir.style.color == 'red' || mayuscula.style.color == 'red'){
        mostrarError.innerHTML = "Hubo un error. Fijate si se cumplieron todas las condiciones.";
        return false;
    }
    else{
        return true;
    }
}