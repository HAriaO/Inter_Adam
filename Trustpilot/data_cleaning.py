import pandas as pd
import numpy as np

df  = pd.read_csv('Go Markets 20 comments .csv')

# -- Drop duplicates -- 
df = df.drop_duplicates()

# -- Drop unnecessary columns --
df = df.drop(columns = ['query', 'review_timestamp', 'author_image'])

# --- Correction on data types ---
df['review_likes'] = df['review_likes'].map({0: True, 1: False}).astype('bool')

# print(df.info())



df2 = pd.read_csv('Trustpilot Search.csv')
print(df2.info())