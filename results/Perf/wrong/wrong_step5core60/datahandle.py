import csv 
with open('data_work', newline='') as csvfile:
    f = open("data_work_clean", "w")
    reader = csv.reader(csvfile, delimiter=',')
    for row in reader:
        moy =( float(row[1]) + float(row[2]) +  float(row[3]) +  float(row[4])  ) /4
        f.write(row[0]+','+str(moy) + "\n")
    f.close()
    csvfile.close()

