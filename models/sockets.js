const Operacion = require("./operacion");

class Sockets {
  constructor(io) {
    this.io = io;
    this.operacion = new Operacion();
    this.socketEvents();
  }

  socketEvents() {
    // On connection
    this.io.on("connection", (socket) => {
      console.log("cliente conectado");

      this.io.emit(
        "operaciones-cliente",
        this.operacion.verOperacionesUsuario()
      );
    });
  }
}

module.exports = Sockets;
