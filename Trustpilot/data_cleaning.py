import pandas as pd
import numpy as np

df  = pd.read_csv('Reviews Scraper - Go Markets.csv')

# -- Drop duplicates -- 
df = df.drop_duplicates()

# -- Drop unnecessary columns --
df = df.drop(columns = ['query', 'review_timestamp', 'author_image'])

# --- Correction on data types ---
df['review_likes'] = df['review_likes'].map({0: True, 1: False}).astype('bool')

# print(df.info())



df2 = pd.read_csv('Trustpilot Search.csv')
# print(df2.info())

df3 = pd.read_csv('Trustpilot Scraper - FPmarkets.csv')
# print(df3.info())

df4 = pd.read_csv('Trustpilot Reviews Summary - Go markets.csv')
# print(df4.info())

df5 = pd.read_csv('Trustpilot Reviews Sentiment Analysis.csv')
print(df5.info())