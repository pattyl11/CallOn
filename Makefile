#
# FLTK-usable makefile adapted to work in Windows 11
# use with MSYS2
# install the following packages:
# MSYS2 install link below
# download from https://code.visualstudio.com/docs/cpp/config-mingw
# package installed is mingw-w64-x86_64-fltk-1.3.9-1-any.pkg.tar.zst
# dowmload FLTK from https://www.fltk.org/software.php 
# I used the fltk-1.3.9-source.tar.bz2 version
# while the MSYS2 UCRT64 shell is open
# pacman -S --needed base-devel mingw-w64-ucrt-x86_64-toolchain
# pacman -S mingw-w64-x86_64-fltk
#

CC = gcc
CXX = g++

INCLIBS = C:\msys64\mingw64\include
CXXFLAGS = -Wall -g -std=c++11 -I$(INCLIBS)
LDPATH = C:\msys64\mingw64\lib
LDPATH2 = C:\msys64\mingw64\bin
LDLIBS = -L$(LDPATH) -L$(LDPATH2) -lfltk -lstdc++

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

callon: callon.o CallOnApp.o Buttons.o Roster.o Student.o
	$(CXX) -o callon callon.o CallOnApp.o Buttons.o Roster.o Student.o $(LDLIBS)

clean:
	del *.o
	del callon
