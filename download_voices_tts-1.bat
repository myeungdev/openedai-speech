@echo off
set models=%* 
if "%models%" == "" set models=en_GB-northern_english_male-medium en_US-libritts_r-medium

for %%i in (%models%) do (
    if not exist "voices\%%i.onnx" python -m piper.download_voices --data-dir voices %%i > nul
)
