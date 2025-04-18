l = [10,20,30,40,50]

print(l)
print(l[3])
print(l[-1])
print(l[-2])

l.append(60)
print(l)

l.insert(1,14)
print(l)

print(15 in l)
print(l.count(20))
print(l.index(30))

l.remove(20)

print(l)

print(l.pop())

print(l)

print(l.pop(3))

print(l)

del(l[1])

print(l)

del(l[0:2])

print(l)