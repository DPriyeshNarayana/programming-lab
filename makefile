# main() converts a given value of length in meters to other units of length

length_converter: main.o to_cm.o to_km.o to_inch.o to_foot.o
	gcc main.o to_cm.o to_km.o to_inch.o to_foot.o -o length_converter

main.o: main.c to_cm.h to_km.h to_inch.h to_foot.h
	gcc -c main.c -o main.o

to_cm.o: to_cm.c to_cm.h
	gcc -c to_cm.c -o to_cm.o

to_km.o: to_km.c to_km.h
	gcc -c to_km.c -o to_km.o

to_inch.o: to_inch.c to_inch.h
	gcc -c to_inch.c -o to_inch.o

to_foot.o: to_foot.c to_foot.h
	gcc -c to_foot.c -o to_foot.o

clean:
	rm -f main.o to_cm.o to_km.o to_inch.o to_foot.o length_converter
