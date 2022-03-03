all:
	ghc src/Main.hs src/Minimize.hs src/ParseInput.hs src/Types.hs -o flp21-fun

clean:
	rm plg-2-nka src/Main.hi src/Minimize.hi src/ParseInput.hi src/Main.o src/Minimize.o src/ParseInput.o src/Types.o
