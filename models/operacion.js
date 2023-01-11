const { v4: uuidv4 } = require('uuid');

class Operacion {
    constructor(){
        this.uuid=uuidv4();
        this.uuiduser = uuidUSer;
        this.simbolo=simbolo;
        this.tipo=tipo;
        this.volumen=volumen;
        this.horaApertura=horaApertura;
        this.precioApertura=precioApertura;
        this.horaCierre=horaCierre;
        this.precioCierre=precioCierre;
        this.plataformaApertura=plataformaApertura;
        this.plataformaCierre=plataformaCierre;
        this.sl=sl;
        this.tp=tp;
        this.comision=comision;
        this.swap=swap;
        this.rollower=rollower;
        this.profit=profit;
       
    }

    verOperacionesUsuario(){
        //conexión con la base de datos
        const { connection } = require("../config.db");
        connection.query("SELECT * FROM operaciones",
                (error, results) => {
                    if (error)
                        throw error;
                 return  response.status(200).json(results);
                });
    }


}

module.exports = Operacion