salary = int(input("Enter Salary"))
Exp = int(input("Enter Experience in Years"))
Rating = float(input("Enter rating"))
bonus = 0

if(Rating > 4.5):
    if Exp > 10:
        bonus = salary * .2
    else :
        bonus = salary * .1
elif(Rating < 4.5 and Rating > 3.5):
    if Exp > 10:
        bonus = salary * .1
    else :
        bonus = salary * .05
print("Final Salary : " , salary + bonus)