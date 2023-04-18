#
# FLTK-usable makefile
#

CC = gcc
C++ = g++

CXXFLAGS = -Wall -g -std=c++11
LDLIBS = -lfltk -lstdc++

callon: callon.o CallOnApp.o Buttons.o Roster.o Student.o

clean:
	rm *.o
	rm callon
