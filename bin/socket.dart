import 'package:socket_io/socket_io.dart';

void main() {

  //crea un servidor
  final server = Server();

  //conexcion al cliente
  server.on('connection', (client) {

    //imprime en la consola
    print('Connected');

    //escucha por el canal 'stream' un mensaje que imprime
    client.on('stream', (data) {
      print('$data');
    });

    //emite por el canal 'msg' 
    client.emit('msg', 'Hello from server');

  });

  //haciendo que el servidor escuche
  server.listen(3000);

}