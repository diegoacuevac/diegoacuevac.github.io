#!/usr/bin/env python
from asyncore import write
from re import L


def word_counting(var1):
    with open(var1, 'r') as f:
        words = f.read().lower().replace(",", "").replace(".", "").split(" ")
        count_words = Counter(words)
        most_common = count_words.most_common(10)
        var = 0
        for word in most_common:
            print(word[0], "\t", word[1])


def Loopdedoo(var2):
    l = 10
    with open(var2, 'r') as numbers:
        for n in numbers:
            if int(n) <= l:
                with open("numbers-" + str(l) + ".txt", "a") as file:
                    file.write(n)
            else:
                l = l + 10


def Megacopy():
    os.mkdir("many-files-updated")
    for f in os.listdir("many-files"):
        origin = os.path.join("/home/runner/Assignment-10-dcueva/many-files",
                              f)
        destination = os.path.join(
            "/home/runner/Assignment-10-dcueva/many-files-updated",
            os.path.splitext(os.path.basename(f))[0] + ".info")
        shutil.copy2(origin, destination)


def r_biology(var3):
    with open(var3, 'r') as f:
        for line in f:
            n_line = line.strip().split("\t")
            if n_line[2] == "transcript":
                print(n_line[8].split(" ")[1].replace(";", ""))


def main():
    word_counting("stars.txt")
    Loopdedoo("numbers.txt")
    Megacopy()
    print("\n----------\n")
    r_biology("covid-19-ncbiGenes.gtf")


if __name__ == '__main__':
    from collections import Counter
    import os
    import shutil
    main()
