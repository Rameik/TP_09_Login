// Cancelar el formulario si alguna condición esta en rojo

function validarFormulario() {
    const mostrarError = document.getElementById('mostrar-error'),
    cespecial = document.getElementById('cespecial'),
    caracteres = document.getElementById('caracteres'),
    coincidir = document.getElementById('coincidir'),
    mayuscula = document.getElementById('mayuscula');


    if(cespecial.style.color == 'red' || caracteres.style.color == 'red' || coincidir.style.color == 'red' || mayuscula.style.color == 'red'){
        mostrarError.innerHTML = "Hubo un error. Fijate si se cumplieron todas las condiciones.";
        return false;
    }
    else{
        return true;
    }
}