window.onload =
() =>
{
    const app = new Vue(
    {
        el:'#app',
        data:
        {
            preguntas:[],
            progreso:1,
            deshabilitado: false,
        },
        methods:
        {
            llenarPreguntas: function()
            {
                $.ajax(
                {
                    url: 'archivo.php',
                    dataType: 'JSON',
                })
                .done(
                e =>
                {
                    e.forEach(
                    el =>
                    {
                        el.activo = (el.activo === 1)
                            ? true
                            : false;
                        this.preguntas.push(el);
                    });
                })
                .fail(
                () =>
                {
                    alert('La culpa es de Emi.')
                });
            },
            guardarDatos: function(id)
            {
                this.deshabilitado = true;
                $.ajax(
                {
                    method: 'POST',
                    data:
                    {

                    },
                    url: ''
                })
                .done(() =>
                {
                    if(this.preguntas[id + 1])
                    {
                        this.preguntas[id].activo = false;
                        this.preguntas[id + 1].activo = true;
                        this.progreso++;
                    
                    }
                    else
                    {
                        this.preguntas[id].activo = false;
                        this.mostrarResultado();
                    }
                    this.deshabilitado = false;
                })
                .fail(() =>
                {
                    alert('Ya nos cargó el payaso...')
                });
            },
            mostrarResultado: function()
            {

            },
            modificarProgresBar: function()
            {
              return  (this.progreso*100)/(this.preguntas.length);
            }
        } 
    });

    $('#dispararAJAX').click();
}