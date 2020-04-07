import csv
import sys
import os, fnmatch

campos = [ "NUM", "1.a", "1.b", "1.c", "1.d", "2.a", "2.b", "2.c", "2.d", "2.e", "2.f", "2.g", "2.h", "2.i", "3.a", "3.b", "3.c" ]
print("\n\r### IST-OC ###")
print("### TPC #2 ###\n\r")
print("Interpretando o ficheiro: " + sys.argv[1] + "\n\r")
with open(sys.argv[1]) as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=';')
    line_count = 0
    questao = 0
    for row in csv_reader:
        line_count += 1
        if line_count != 1:
            sys.exit("ERRO: numero de linhas errado")
        for it in row[:-1]:
            print(campos[questao] + " " + it)
            questao = questao + 1
print("EOF: Processed " + str(line_count) + " lines")
