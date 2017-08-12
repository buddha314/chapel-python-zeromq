import zmq

context = zmq.Context()
socket = context.socket(zmq.REQ)
socket.connect("tcp://localhost:5555")

for request in range(10):
    print("Sending request %s ..." % request)
    socket.send(str("Yo"))
    message = socket.recv()
    print("OMG!! He said %s" % message)

