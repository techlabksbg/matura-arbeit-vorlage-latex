n=10  # Anzahl Zeilen
space = 4
p = [[1]]
for i in range(n):
    p.append([1]+[p[-1][j]+p[-1][j+1] for j in range(i)]+[1])
for i in range(n+1):
    print((" "*((n-i)*space//2)+("%"+str(space)+"d")*(i+1))%tuple(p[i]))
