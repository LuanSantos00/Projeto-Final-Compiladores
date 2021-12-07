all : codigo_luan.l codigo_luan.y
	clear
	flex -i codigo_luan.l
	bison codigo_luan.y
	gcc codigo_luan.tab.c -o compilador -lfl -lm
	./compilador
