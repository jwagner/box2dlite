all : box2dlite

box2dlite : Arbiter.o Body.o Collide.o Joint.o main.o World.o
	g++ -Wall $^ -o $@ -lGLU -lGL -lglut
%.o : %.c
	g++ -c $<
clean : 
	rm *.o
