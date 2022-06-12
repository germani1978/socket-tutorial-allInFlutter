import 'package:socket_io_client/socket_io_client.dart' as socket;

void main() {

 final client  = socket.io( 'http://localhost:3000', <String, dynamic>{'transports': ['websocket'],} );

  //cuando se conecta al servidor
  client.onConnect((_) {

    //print en nuestra consola  
    print('Connected');

    //emite por el canal 'stream'
    client.emit('stream',"Hello from client");

  });

  client.on('msg', (data) => print(data));

}