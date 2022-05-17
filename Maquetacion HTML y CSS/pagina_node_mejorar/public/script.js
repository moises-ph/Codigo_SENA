function fecha_pag(){
    var meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];
    var d = new Date();
    var dia = d.getDate();
    var mes_n = d.getMonth();
    var mes = meses[mes_n];
    var año = d.getFullYear();
    document.getElementById("mes").innerHTML = `Mes: ${mes}`;
    document.getElementById("año").innerHTML = `Año: ${año}`;
    document.getElementById("dia").innerHTML = `Día: ${dia}`;
    console.log(dia, mes, año);
}

function vistas_pag(){
    let visitas = localStorage.getItem('visitas');
    if(visitas == null){
        localStorage.setItem('visitas', 1);
    }
    else {
        localStorage.setItem('visitas', parseInt(visitas)+1);
        document.getElementById('visitas').innerHTML = `Numero de visitas: ${visitas}`;
    }
}
fecha_pag();
vistas_pag();