#!/usr/bin/env python
def word_counting(var1):
    with open(var1, 'r') as f:
        words = f.read().lower().replace(",","").replace(".","").split(" ")
        count_words = Counter(words)
        most_common = count_words.most_common(10)
        var = 0
        for word in most_common:
            print(word[0], "\t", word[1])

def Loopdedoo():
    with open("numbers.txt", 'r') as number:
        with open("output.txt", 'w') as output:

def main():
    word_counting("stars.txt")
    Loopdedoo()

if __name__ == '__main__':
    from collections import Counter
    main()
