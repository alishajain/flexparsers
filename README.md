flexparsers
===========
This program is designed using Flex.
It reads a text file and detects point, line, arc, circle and ellipse in the file.
The commands used to compile it are as follows:

flex sampleflex.l

g++ lex.yy.c -lfl -o sampleflex

./sampleflex
