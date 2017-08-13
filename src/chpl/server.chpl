use ZMQ;
var context: Context;
var socket = context.socket(ZMQ.REP);
socket.bind("tcp://*:5555");

while ( 1 < 2) {
  var msg = socket.recv(string);
  socket.recv(string);
  writeln("got something");
  socket.send("back from chapel");
}

