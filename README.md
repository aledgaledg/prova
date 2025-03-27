
# Web App per Analisi di Reti Criminali con AI + Gephi

Questa applicazione permette di:
- Caricare documenti testuali (PDF, TXT)
- Estrarre entità e relazioni con un modello NLP
- Costruire una rete (grafo) tra soggetti
- Visualizzarla in Gephi (tramite streaming o file GEXF)

## Tecnologie utilizzate
- FastAPI (backend)
- Bootstrap Italia (frontend)
- SpaCy o modello LLM per NLP
- Neo4j (opzionale) o CSV/GEXF
- Gephi + Sigma.js (per la visualizzazione)

## Esecuzione
1. Installa i pacchetti richiesti:
```
pip install fastapi uvicorn spacy python-multipart jinja2 networkx
python -m spacy download en_core_web_sm
```

2. Avvia il server:
```
uvicorn app.main:app --reload
```

3. Apri il browser su: http://127.0.0.1:8000

4. Per Gephi: avvia Gephi, importa i dati da /app/data/network.gexf
