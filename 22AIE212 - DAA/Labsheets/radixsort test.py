d = lambda num, i: num//(10**i)%10

from math import log10 as log

def RadixSort(arr, i=0):
  ll = [[] for i in range(10)]
  for num in arr:
    ll[d(num, i)].append(num)
  arr.clear()
  for l in ll:
    for num in l:
      arr.append(num)
  if i-1 == int(log(max(arr))):
    return arr
  return RadixSort(arr, i+1)


print(RadixSort([1234, 567, 8901, 234, 7890, 456, 3456, 678, 9012, 345, 6789, 123, 789, 4567, 2345, 6780, 9123, 3450, 6781, 1230, 7891, 4560, 2340, 6782]))
