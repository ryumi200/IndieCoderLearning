import csv

movies = [['Top Gun', 'Risky Buisiness', 'Minority Report'], ['Titanic', 'The Revenant', 'Inception'], ['Training Day', 'Man on Fire', 'Fight']]

with open('movie.csv', 'w', newline='') as f:
        w = csv.writer(f, delimiter=',')
        for i in movies:
                w.writerow(i)