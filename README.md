# chapel-python-zeromq
Attempts to cross the python / chapel divide with ZeroMQ

This currently works w/ Python to Python and Chapel to Chapel, not communicating yet. Almost certainly something stupid I did

Got some good advice on the [SO Post](https://stackoverflow.com/questions/45651724/zeromq-w-chapel-and-python-cannot-answer-in-current-state/45654811#45654811)

# Running

You need Chapel 1.16+.  Open two terminals

```
1 > cd src/chpl
1 > make server
1 > ./server

2 > cd src/python
2 > python client.py
```

And that's where the magic happens
