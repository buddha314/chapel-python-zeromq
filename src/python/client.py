import zmq

context = zmq.Context()
socket = context.socket(zmq.REQ)
socket.connect("tcp://localhost:5555")

for request in range(10):
    print("[Python Client] Sending request %s ..." % request)
    socket.send("%s Hey Chapel, this is Python, am I bugging you?" % request)
    message = socket.recv()
    print("OMG!! He said %s" % message)
