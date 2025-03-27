
@echo off
echo ===============================
echo AVVIO WEB APP AI + GEPHI
echo ===============================
echo.

if not exist venv (
    echo Creazione ambiente virtuale...
    python -m venv venv
)

echo Attivazione ambiente...
call venv\Scripts\activate

echo Installazione dipendenze...
pip install -r requirements.txt
python -m spacy download en_core_web_sm

echo Avvio del server...
start http://127.0.0.1:8000
uvicorn app.main:app --reload
pause
