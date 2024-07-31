from random import randint

def generateSequence():
    sequence=""
    base=['A','T','C','G']
    length=100
    for i in range(length):
            sequence += base[randint(0,3)]
    return sequence

def hDistCalculate(seq1, seq2):
    hammingDist = 0
    for i in range(len(seq1)):
        if(seq1[i] != seq2[i]):
            hammingDist += 1

    return hammingDist

seq1, seq2 = generateSequence(), generateSequence()
print("Sequence 1: " + seq1)
print("Sequence 2: " + seq2)
print("Hamming Distance: " + str(hDistCalculate(seq1,seq2)))
