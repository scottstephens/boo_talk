class Kaboomer:
    def kaboom():
        print "kaboom"

def do_it(x as Kaboomer):
    x.kaboom()

class MyKaboomer:
    def kaboom():
        print "I can kaboom too"

a = MyKaboomer() as duck
do_it(a)

