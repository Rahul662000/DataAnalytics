l1 = [x for x in range(11) if x%2 == 0]
print(l1)

l2 = [x for x in range(11) if x%2 != 0]
print(l2)

d1 = {101:'GFG' , 103:'Practice' , 102:'IDE'}
d2 = {v:k for (k,v) in d1.items()}

print(d2 )