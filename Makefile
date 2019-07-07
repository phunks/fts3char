# Makefile for VC++2019
fts3char: character_tokenizer.c
	gcc -O2 -shared character_tokenizer.c -o fts3char.dll -I. -Lsqlite3.lib