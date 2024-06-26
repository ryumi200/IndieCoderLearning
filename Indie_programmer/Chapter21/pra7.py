from collections import deque
import time
import random

def simulate_line(till_show, max_time):
    pq = deque()
    tix_sold = []

    for i in range(100):
        pq.appendleft("person" + str(i))
    
    t_end = time.time() + till_show
    now = time.time()
    while now < t_end and len(pq) > 0:
        now = time.time()
        r = random.randint(0, max_time)
        time.sleep(r)
        person = pq.pop()
        print(person)
        tix_sold.append(person)
    
    return tix_sold

sold = simulate_line(5, 1)
print(sold)