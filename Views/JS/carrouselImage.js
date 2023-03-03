

window.onload = function () {
    // Variables
    var images = ['Assets/Carrousel/1.jpg',
                  'Assets/Carrousel/2.jpg',
                  'Assets/Carrousel/3.jpg',
                  'Assets/Carrousel/4.jpg',
                  'Assets/Carrousel/5.jpg',
                ];
    let cont = 0;
    let back = document.getElementById('back');
    let next = document.getElementById('next');
    let image = document.getElementById('image');

    // Funciones

    /**
     * Funcion que cambia la foto en la siguiente posicion
     */
    function pasarFoto() {
        if(cont >= images.length - 1) {
            cont = 0;
        } else {
            cont++;
        }
        renderizarImagen();
    }

    /**
     * Funcion que cambia la foto en la anterior posicion
     */
    function retrocederFoto() {
        if(cont <= 0) {
            cont = images.length - 1;
        } else {
            cont--;
        }
        renderizarImagen();
    }

    /**
     * Funcion que actualiza la imagen de imagen dependiendo de cont
     */
    function renderizarImagen () {
        image.style.backgroundImage = `url(${images[cont]})`;
    }

    // Eventos
    next.addEventListener('click', pasarFoto);
    back.addEventListener('click', retrocederFoto);
    // Iniciar
    renderizarImagen();
}