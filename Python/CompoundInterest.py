p = int(input("Enter Principle Amount : "))
r = int(input("Enter Interest Rate : ")) / 100
n = int(input("Number of Times Interest Applied : "))
t = int(input("Total Time : "))
A = p*((1+(r/n))**(n*t))
print("Your Compound Interest is : %.2f" % A)
