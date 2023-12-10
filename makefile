COUNTRIES=UNEM/ARA.csv UNEM/INA.csv UNEM/USA.csv TFP/ARA.csv TFP/INA.csv TFP/USA.csv
all : final_results.pdf $(COUNTRIES)

final_results.pdf: tfpunemregression.R $(COUNTRIES)
	Rscript tfpunemregression.R

UNEM/%.csv: unempdata.csv
	python3 splitunempdata.py $(basename $(@F))

OBS_START=1991-01-01
XXX_SERIES=RTFPNA$(basename $(@F))632NRUG
TFP/%.csv:
	fred save --csv TFP/$(@F) series/observations series_id:$(XXX_SERIES) observation_start:$(OBS_START)
