from stack import Stack

stack = Stack()

for c in 'Hello':
    stack.push(c)

reverse = ''

while stack.size():
    reverse += stack.pop()

print(reverse)