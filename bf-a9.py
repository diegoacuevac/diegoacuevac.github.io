
def number_words(darwin_text):
    darwin_text = darwin_text.lower().replace(",",".").replace(".","").split(" ")
    print("Number of words in paragraph:",len(darwin_text))
    return(darwin_text)

def word_counter(darwin_text2):
    darwin_set = set(darwin_text2)
    darwin_set = sorted(darwin_set)
    for word in darwin_set:
        print(word,darwin_text2.count(word))

def com_dot(darwin_text):
    com_dot_set = (",",".")
    for coma_dot in com_dot_set:
        print(coma_dot,darwin_text.count(coma_dot))

def unique_words(darwin_text2):
    darwin_set = set(darwin_text2)
    darwin_set = sorted(darwin_set)
    unique_words = 0
    for word in darwin_set:
        if darwin_text2.count(word) == 1:
            unique_words = unique_words + 1
    print("Number of UNIQUE words in paragraph:",unique_words)

def most_common_word(darwin_text2):
    darwin_set = set(darwin_text2)
    darwin_set = sorted(darwin_set)
    count = 0
    for word in darwin_set:
        if darwin_text2.count(word) > count:
            common_word = word
            count = darwin_text2.count(word)
    print("The most common word is:",common_word)
            

def main(darwin_text):
    print("\n------------------------\n")
    darwin_text2=number_words(darwin_text)
    print("\n------------------------\n")
    word_counter(darwin_text2)
    print("\n------------------------\n")
    com_dot(darwin_text)
    print("\n------------------------\n")
    unique_words(darwin_text2)
    print("\n------------------------\n")
    most_common_word(darwin_text2)
    print("\n------------------------\n")

    
if __name__ == '__main__':
    darwin_text = "THE view generally entertained by naturalists is that species, when intercrossed, have been specially endowed with the quality of sterility, in order to prevent the confusion of all organic forms. This view certainly seems at first probable, for species within the same country could hardly have kept distinct had they been capable of crossing freely. The importance of the fact that hybrids are very generally sterile, has, I think, been much underrated by some late writers. On the theory of natural selection the case is especially important, inasmuch as the sterility of hybrids could not possibly be of any advantage to them, and therefore could not have been acquired by the continued preservation of successive profitable degrees of sterility. I hope, however, to be able to show that sterility is not a specially acquired or endowed quality, but is incidental on other acquired differences."
    main(darwin_text)