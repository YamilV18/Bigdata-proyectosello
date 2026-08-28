# Proyecto Sello - Análisis de Trades de BTCUSDT

Este proyecto utiliza Docker y PySpark para el procesamiento y análisis de un gran volumen de datos de transacciones (trades) de Binance (`BTCUSDT`).

---

## 📂 Estructura del Proyecto

```text
proyecto-sello/
├── data/                    # Carpeta donde debe colocarse el archivo CSV descomprimido
│   └── BTCUSDT-trades-2026-01-05.csv
├── .ipynb_checkpoints/
├── actividad_autonoma.ipynb # Notebook principal con el análisis
├── compose.yml              # Configuración de Docker Compose
└── Dockerfile               # Definición del entorno con Python y PySpark