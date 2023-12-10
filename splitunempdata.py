import pandas as pd
import sys
df = pd.read_csv('unempdata.csv')
grouped = df.groupby(df.Code)
for code in sys.argv[1:]:
	new_series = grouped.get_group(code)
	new_series.to_csv('./UNEM/' + code + '.csv')
exit()

