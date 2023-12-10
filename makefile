all : TFP/ARA.csv TFP/INA.csv TFP/USA.csv



OBS_START=1954-01-01
XXX_SERIES=RTFPNA$(basename $(@F))632NRUG
TFP/%.csv:
	fred save --csv TFP/$(@F) series/observations series_id:$(XXX_SERIES) observation_start:$(OBS_START)
