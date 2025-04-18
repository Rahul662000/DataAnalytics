# Key pair value
# Unordered
# all keys must be distinct
# values may repeat
# use hasing internally

d = {110:'XYZ' , 101:"abc" , 105:"dfg"}

print(d)

d = {}

d["laptop"] = 40000
d["mobile"] = 30000
d["earphone"] = 4000

print(d)
print(d["mobile"])

d = {110:'XYZ' , 101:"abc" , 105:"dfg"}
print(d.get(101))
print(d.get(125))
print(d.get(125,'NA'))

# len , pop , popitem , del