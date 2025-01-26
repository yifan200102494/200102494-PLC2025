def listFunc(a, b):
    return [i for i in range(a, b + 1)]

def applicatorFunc(inpFunc, s):
    if s=='s':
        return sum(inpFunc)
    elif s == 'a':
        return sum(inpFunc) / len(inpFunc)
    else:
        return "Invalid option! Use 's' for sum or 'a' for average."

a = 5
b = 8
rangeList = listFunc(a, b)
resultSum = applicatorFunc(rangeList, 's')
resultAvg = applicatorFunc(rangeList, 'a')

print(f"Sum = {resultSum}")
print(f"Average = {resultAvg}")