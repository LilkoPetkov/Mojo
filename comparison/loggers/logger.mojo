from python import Python


fn main() raises -> None:
    var OS: PythonObject = Python.import_module("os")
    var TIME: PythonObject = Python.import_module("time")
    var LOGGING: PythonObject = Python.import_module("logging")

    # Logger
    var logger = LOGGING.getLogger("myLogger")
    logger.setLevel(LOGGING.DEBUG)

    # Handler
    var file_handler = LOGGING.FileHandler(
        OS.path.join(OS.getcwd(), "app.log"), mode="a",
    )
    file_handler.setLevel(LOGGING.DEBUG)

    # Formatter
    LOGGING.Formatter.converter = TIME.gmtime
    var formatter = LOGGING.Formatter(
        '[%(asctime)s] - %(filename)s - line: %(lineno)d - function: %(funcName)s - %(levelname)s - %(message)s',
        datefmt='%d-%b-%y %H:%M:%S'
    )

    file_handler.setFormatter(formatter)

    logger.addHandler(file_handler)

    # Test debugging
    logger.debug("This is a DEBUG message")
    logger.info("This is an INFO message")
    logger.warning("This is a warning message")
    logger.error("This is an ERROR message")
    logger.critical("This is a CRITICAL message")
    