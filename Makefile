# 타겟 :dependency
#		커맨드
# 터미널 창에서 "make 타겟"
# all인 경우 make만 해도 ok
all: sum_test

sum_test: sum.o main.o
		g++ -o sum_test sum.o main.o

sum.o: sum.h sum.cpp
		g++ -c -o sum.o sum.cpp

main.o: main.cpp sum.h
		g++ -c -o main.o main.cpp
	
clean: 
		rm -f sum_test.exe *.o sum_test