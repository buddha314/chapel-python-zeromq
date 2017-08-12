use ZMQ;
config const to: string = "world!";
var context: Context;
var socket = context.socket(ZMQ.PUSH);
socket.bind("tcp://*:5555");

for i in 1..10 {
  socket.send(to);
}
