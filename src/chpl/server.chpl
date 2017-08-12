use ZMQ;
var context: Context;
var socket = context.socket(ZMQ.PULL);
socket.connect("tcp://localhost:5555");

while ( 1 < 2) {
  writeln("Hello, ", socket.recv(string));
  socket.send("back from chapel");
}

