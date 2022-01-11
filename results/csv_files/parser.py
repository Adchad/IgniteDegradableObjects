import pandas as pd

#f=open("Hot_Spots1.csv","r")
#csvf = csv.reader(f, delimiter=",")
#
#print(csvf.__next__())
#print(csvf.__next__())
#print(csvf.__next__())
#print(csvf.__next__())



df = pd.read_csv('Hot_Spots1.csv')
sum = df.sum(0)["Self Time (microseconds)"]
df["Self Time %"] = df["Self Time (microseconds)"] / sum

df_gathered = pd.DataFrame()  
df_gathered["Hot Spot"] = df["Hot Spot"]

df_gathered["#1"] = df["Self Time %"]



df = pd.read_csv('Hot_Spots2.csv')
sum = df.sum(0)["Self Time (microseconds)"]
df["Self Time %"] = df["Self Time (microseconds)"] / sum

df_gathered["#2"] = df["Self Time %"]


df = pd.read_csv('Hot_Spots3.csv')
sum = df.sum(0)["Self Time (microseconds)"]
df["Self Time %"] = df["Self Time (microseconds)"] / sum

df_gathered["#3"] = df["Self Time %"]


df = pd.read_csv('Hot_Spots4.csv')
sum = df.sum(0)["Self Time (microseconds)"]
df["Self Time %"] = df["Self Time (microseconds)"] / sum

df_gathered["#3"] = df["Self Time %"]


df = pd.read_csv('Hot_Spots5.csv')
sum = df.sum(0)["Self Time (microseconds)"]
df["Self Time %"] = df["Self Time (microseconds)"] / sum

df_gathered["#5"] = df["Self Time %"]


df = pd.read_csv('Hot_Spots10.csv')
sum = df.sum(0)["Self Time (microseconds)"]
df["Self Time %"] = df["Self Time (microseconds)"] / sum

df_gathered["#10"] = df["Self Time %"]


df = pd.read_csv('Hot_Spots20.csv')
sum = df.sum(0)["Self Time (microseconds)"]
df["Self Time %"] = df["Self Time (microseconds)"] / sum

df_gathered["#20"] = df["Self Time %"]

df = pd.read_csv('Hot_Spots30.csv')
sum = df.sum(0)["Self Time (microseconds)"]
df["Self Time %"] = df["Self Time (microseconds)"] / sum

df_gathered["#30"] = df["Self Time %"]


df_gathered.to_csv("output.csv")
