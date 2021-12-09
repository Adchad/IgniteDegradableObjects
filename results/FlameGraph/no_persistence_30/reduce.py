import json 

with open("ignite_parsed.perf", 'r') as f:
    lines = f.readlines()
    w = open("ignite_parsed.csv", "w")
    dicts = {}
    for line in lines :
        if(line in dicts.keys()):
           dicts[line] = dicts[line] + 1
        else :
           dicts[line] = 1
    
    dict_sorted=dict(sorted(dicts.items(), key=lambda item: item[1], reverse=True))
    sum_vals = 1882
    for i in dict_sorted.keys() :
        w.write(i[:-1]+","+str(100*dict_sorted[i]/sum_vals)+"%" + '\n')




    w.close()

