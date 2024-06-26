my_list = []

with open('st.txt', 'r', encoding='utf-8') as f:
        my_list.append(f.read())

print(my_list)