import tensorflow as tf 
from argparse import ArgumentParser

class HelloTensorflow():
    def __init__(self, args):
        self.__switch = args.switch

        self.__initialize()

    def __initialize(self):
        self.__sess = tf.Session()

    def execute(self):
        self.__execute()
    def __execute(self):
        hello = tf.constant(r'Hello, Tensorflow!')

        print(self.__sess.run(hello))

        if self.__switch:
            a = tf.constant(10)
            b = tf.constant(32)
            print(self.__sess.run(a + b))

def main(args):
    helloTensorflowExecutor = HelloTensorflow(args)

    helloTensorflowExecutor.execute()

if __name__ == "__main__":
    parser = ArgumentParser(
        prog=r'HelloTensorflow',
    )

    parser.add_argument(r'-s', r'--switch', action=r'store_true')

    args = parser.parse_args()

    main(args)