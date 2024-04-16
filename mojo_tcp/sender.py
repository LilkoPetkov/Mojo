import socket


# create a socket object name 'k'
s = socket.socket()


s.connect(('127.0.0.1', 40674))
s.send(b"Hello, take this string!")

try:
    print(s.recv(1024))
except ConnectionError as CE:
    print(CE)

s.close()
