import csv

movies = [['トップガン', 'リスキービジネス', 'マイノリティレポート'], 
          ['タイタニック', 'ザ・レヴナント', 'インセプション'],
          ['トレーニングデイ', 'マンオンファイア', 'フライト']]

with open('movies.csv', 'w', newline='', encoding='utf-8') as f:
        spamwriter = csv.writer(f, delimiter=',')
        for i in movies:
                spamwriter.writerow(i)