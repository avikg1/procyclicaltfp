This is a project to work through GNU make and also tinker with some APIs.
The idea is to explore the relationship between unemployment and total factor productivity.
This comes from Alexander Field's book *A Great Leap Forward* and his related article Field (2010).
I take total factor productivity data from the FRED and unemployment data from the World Bank.
Interestingly, there doesn't seem to be any strong relationship for any of the three countries I've included on the final_results.pdf.

If you'd like to play around yourself, look up any country's tfp graph on the FRED (e.g https://fred.stlouisfed.org/series/RTFPNAINA632NRUG for India)
and then check for the country code in the series id (e.g INA in RTFPNAINA632NRUG). Add two files ('UNEM/CODE.csv' and 'TFP/CODE.csv') to the countries list in the first line of
the makefile. If this is the standard country code, you'll be done. If this is not, (IND is standard, not INA), you'll have to go to the unempdata.csv file and find and replace the new country
code in. This inconvenience is one thing I'd like to try and solve in the future.
