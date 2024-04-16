from python import Python


fn main() raises -> None:
    var socket = Python.import_module("socket")
    var codecs: PythonObject = Python.import_module("codecs")
    var SOCKET: PythonObject = socket.socket()

    var CONNECT: PythonObject = SOCKET.connect(('127.0.0.1', 40674))
    var SEND: PythonObject = SOCKET.send(codecs.encode("Thank you!", "utf-8"))

    print(SOCKET.recv(1024))
