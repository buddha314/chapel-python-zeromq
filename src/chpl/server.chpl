use ZMQ;
var context: Context;
var socket = context.socket(ZMQ.REP);
socket.bind("tcp://*:5555");

for i in 0..#10 {
  var msg = socket.recv(string);
  writeln("[Chapel Server] received message: ", msg);
  socket.send("This it the %i th time I'm telling you to shut up!".format(i));
}
