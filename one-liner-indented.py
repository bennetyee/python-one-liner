#!/usr/bin/python3
import sys;
print((lambda s,i:
       "".join(map(lambda v:
                   s[v()],
                   [lambda:
                    (lambda h:h(h))
                    (lambda t:
                     (lambda v:
                      [lambda:t(t),lambda:v][int(v<len(s))]())
                     (ord(i.read(1))))]*int(sys.argv[1]))))
      (sys.argv[2],open("/dev/urandom","rb")));
