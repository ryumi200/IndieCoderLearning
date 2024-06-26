from collections import deque

a = deque()
for i in 'yesterday':
    a.append(i)

a_reverse = ''

while len(a) > 0:
    a_reverse += a.pop()

print(a_reverse)