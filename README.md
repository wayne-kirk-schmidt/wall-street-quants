
# Wall Street Quants — Quant Research Workspace

This repository contains coursework, research notebooks, and generated artifacts from the **Wall Street Quants quantitative trading bootcamp**.

The repository is organized around three primary areas:

1. **Homework** – structured exercises used to build quantitative research skills  
2. **Project** – applied research and strategy development  
3. **Output** – generated artifacts produced by the research pipeline  

The workflow of the repository follows a simple model:

Learning → Research → Strategy → Results

---

# Repository Overview

| Area | Description | Link |
|-----|-----|-----|
| Homework | Bootcamp exercises and solutions | [homework/](./homework/) |
| Project Notebooks | Main research pipeline | [project/Stat_Arb_Notebook/](./project/Stat_Arb_Notebook/) |
| Output Artifacts | Generated datasets and signals | [project/Stat_Arb_Notebook/output/](./project/Stat_Arb_Notebook/output/) |

---

# 1. Homework

The **homework directory** contains the completed exercises from the bootcamp.

These notebooks cover the core quantitative research stack:

- Python fundamentals
- NumPy
- Pandas
- financial time series
- regression analysis
- drawdown calculations
- portfolio weights

Directory:

```
homework/
```

Examples:

- [Homework1_Solutions.ipynb](./homework/Homework1_Solutions.ipynb)
- [Homework2_Solutions.ipynb](./homework/Homework2_Solutions.ipynb)
- [Homework3_Solutions.ipynb](./homework/Homework3_Solutions.ipynb)
- [Homework4_Solutions.ipynb](./homework/Homework4_Solutions.ipynb)

Archived bootcamp materials are also available in:

```
archives/
```

---

# 2. Project — Crypto Statistical Arbitrage

The main research work lives in:

```
project/Stat_Arb_Notebook/
```

Project entry point:

- [000_overview.ipynb](./project/Stat_Arb_Notebook/000_overview.ipynb)

Research notebooks:

| Stage | Notebook |
|------|------|
| Data download | [001_download.ipynb](./project/Stat_Arb_Notebook/notebooks/001_download.ipynb) |
| Feature enrichment | [002_enrich.ipynb](./project/Stat_Arb_Notebook/notebooks/002_enrich.ipynb) |
| Event analysis | [003_analysis.ipynb](./project/Stat_Arb_Notebook/notebooks/003_analysis.ipynb) |
| Strategy construction | [004_strategy.ipynb](./project/Stat_Arb_Notebook/notebooks/004_strategy.ipynb) |
| Backtesting | [005_backtest.ipynb](./project/Stat_Arb_Notebook/notebooks/005_backtest.ipynb) |
| Write‑up | [006_writeup.ipynb](./project/Stat_Arb_Notebook/006_writeup.ipynb) |

The pipeline creates a **deterministic research DAG** where each stage reads artifacts from the previous stage.

---

# 3. Output Artifacts

Generated research artifacts are stored in:

```
project/Stat_Arb_Notebook/output/
```

Primary dataset outputs:

- [001_download/](./project/Stat_Arb_Notebook/output/001_download/)

Example files:

```
BTCUSDT.event_panel.pkl
ETHUSDT.event_panel.pkl
SOLUSDT.event_panel.pkl
BNBUSDT.event_panel.pkl
```

These files contain synchronized price panels and event datasets used in the strategy research.

Artifacts are treated as **immutable outputs** of the research pipeline.

---

# Supporting Material

Additional supporting materials can be found in:

| Directory | Description |
|------|------|
| [examples/](./examples/) | Python and data analysis examples |
| [docs/](./docs/) | Bootcamp documentation and setup guides |
| [archives/](./archives/) | Archived bootcamp notebooks and datasets |

---

# Research Focus

The active project explores **leader‑follower dynamics in crypto markets**, focusing on:

- volatility shocks
- cross‑asset propagation
- lag structure
- statistical arbitrage opportunities

The strategy hypothesis:

> Large volatility shocks in one crypto asset propagate to others with a measurable lag structure that may be exploited by systematic trading.

---

# Future Improvements

Planned improvements include:

- full directory tree visualization
- research pipeline DAG diagram
- strategy performance summary
- experiment registry

