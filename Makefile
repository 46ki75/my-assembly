# ターゲット
all: dist/my_program

# オブジェクトファイルのビルド
main.o: src/main.asm
	mkdir -p dist
	nasm -f elf64 src/main.asm -o dist/main.o

# 実行ファイルのビルド
dist/my_program: main.o
	ld -o dist/my_program dist/main.o

# クリーンアップ
clean:
	rm -f dist/main.o dist/my_program
