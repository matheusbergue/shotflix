const buscar = document.getElementById('buscar')
const iconBuscar = document.getElementById('iconBuscar')
const form = document.getElementById('form')

form.addEventListener('mouseenter', () => {
    (function aumentarTamanho(){
        buscar.style.height = '40px'
        buscar.style.width = '250px'
    })();

    (function esconderIcon(){
        iconBuscar.style.display = 'none'
    })();
})

form.addEventListener('mouseleave', () => {
    (function diminuirTamanho(){
        buscar.style.height = '0px'
        buscar.style.width = '0px'
    })();

    (function mostrarIcon(){
        iconBuscar.style.display = 'block'
    })();
})

