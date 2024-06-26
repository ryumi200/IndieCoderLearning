from collections import deque

new_list = [1, 2, 3, 4, 5]

a = deque()

for i in new_list:
    a.appendleft(i)

print(a)