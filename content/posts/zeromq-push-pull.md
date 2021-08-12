+++
date = "2019-02-26"
title = "Simple, Non-blocking, Push/Pull Example with ZeroMQ"
description = "A simple example of a non-blocking client-server relationship in ZeroMQ using a client which pushes and a server which pulls."
tags = ["ZeroMQ", "Messaging Queues", "Programming", "Push & Pull", "Client & Server", "Non-blocking"]
+++

### Intro

While working on [TotalEmail](https://totalemail.io), I ran across a situation in which we needed to make a non-blocking request (a request where the client makes the request without waiting or expecting a response). To accomplish this, I started looking into [ZeroMQ](http://zeromq.org/). ZeroMQ is amazing! It is very well-structured and generalizes the problem of messaging between machines very effectively.

While the [ZeroMQ](http://zeromq.org/) [documentation](http://zguide.zeromq.org/page:all) is extensive, it is easy (at least for me) to get lost in the docs and forget the simplicity and elegance of ZeroMQ. In this post, I share a simple, non-blocking, push/pull system that pushes from a client (without waiting for a response) and pulls the data into a server. The benefit of this construct is that the client does not wait for a response from the server. In this sense, it is a non-blocking operation.

### The Code

#### Client

```python
import zmq

context = zmq.Context()

# Socket to send messages on
sender = context.socket(zmq.PUSH)
sender.bind("tcp://*:5559")

for i in range(3):
    print('sending {}'.format(i))
    sender.send_string(str(i))

```

The client binds to a port (`5559` - this port is used in the server code as well) and then sends the numbers zero, one, and two to the server. The client pushes data (as specified by the `zmq.PUSH`) which means that it does not wait for a response from the server.

#### Server

```python
import time
import zmq

context = zmq.Context()

# Socket to receive messages on
receiver = context.socket(zmq.PULL)
receiver.connect("tcp://localhost:5559")


def print_value(s):
    time.sleep(2)
    print('value: {}'.format(s))


# Process tasks forever
while True:
    s = receiver.recv_string()
    print('received {}'.format(s))
    print_value(s)

```

The server is designed to pull content (as specified by the `zmq.PULL`) from `tcp://localhost:5559`. When it receives something, it will send it to the `print_value` function where the value will be printed off after two seconds. Again, the nice thing about this setup is that, even though the server takes some time to process the incoming data, the client doesn't have to wait around for a response from the server.

### Benefits

This construct is helpful because it:

- Keeps the communication between systems as simple as possible
    - No worrying about http status codes, query parameters, or request bodies
- Is non-blocking in the sense that the client doesn't wait for a response from the server
- Is simple (in terms of the code required to accomplish the task)

If you have never used ZeroMQ, give it a try! It is fun to use and opens some exciting doors.
