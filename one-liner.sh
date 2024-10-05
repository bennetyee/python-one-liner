#!/bin/bash

# This is an example usage as a one-liner, with the two required
# arguments present.

python3 -c 'import sys;print((lambda s,i:"".join(map(lambda v:s[v()],[lambda:(lambda h:h(h))(lambda t:(lambda v:[lambda:t(t),lambda:v][int(v<len(s))]())(ord(i.read(1))))]*int(sys.argv[1]))))(sys.argv[2],open("/dev/urandom","rb")));' 80  abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
