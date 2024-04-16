from python import Python


fn main() raises -> None:
    var builtins: PythonObject = Python.import_module("builtins")
    var socket = Python.import_module("socket")
    var SOCKET: PythonObject = socket.socket()
    print("Socket created succcessfully")

    var PORT: Int = 40674
    var BINDING: PythonObject = SOCKET.bind(("", PORT))
    print("Socket bound to port: 40674")

    var LISTENER: PythonObject = SOCKET.listen(5)
    print("Socket is listening")

    while True:
        var accepted: PythonObject = SOCKET.accept()

        var c: PythonObject = accepted[0]
        var addr: PythonObject = accepted[1]

        print("Got connection from", addr)
        var data: PythonObject = c.recv(1024)
        print(data.__str__())

        # Send a thank you message
        var SEND: PythonObject = c.send(builtins.bytes(builtins.str("Thank you!"), "utf-8"))

        var CLOSE: PythonObject = c.close()
