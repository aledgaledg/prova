
@echo off
REM === Script di avvio per Web App AI + Gephi ===

echo --------------------------------------------
echo Avvio dell'ambiente FastAPI...
echo --------------------------------------------

REM Attiva ambiente virtuale se presente
IF EXIST venv\Scripts\activate (
    call venv\Scripts\activate
    echo Ambiente virtuale attivato.
)

REM Avvia FastAPI su porta 8000
start cmd /k "uvicorn app.main:app --reload"

echo --------------------------------------------
echo Ora puoi aprire il browser su:
echo http://127.0.0.1:8000
echo --------------------------------------------

echo.
echo *** ATTENZIONE - Per usare lo streaming Gephi ***
echo 1. Apri Gephi
echo 2. Installa il plugin 'Graph Streaming' (se non presente)
echo 3. Vai su File > Streaming > 'workspace0'
echo 4. Lascia la finestra attiva per ricevere i dati!
echo --------------------------------------------
pause
