#!/bin/sh

PORT=$1

make reset-opt
make flash
stm8-programmer -p $PORT --read 0x8000 --number-of-bytes 255
sleep 1
stm8-programmer -p $PORT --read 0x8000 --number-of-bytes 255
sleep 1

make enable-rop
stm8-programmer -p $PORT --read 0x8000 --number-of-bytes 255
sleep 1
stm8-programmer -p $PORT --read 0x8000 --number-of-bytes 255
