# Wall Street Quants -- Crypto Statistical Arbitrage

**Author:** Wayne Kirk Schmidt
**Email:** wayne.kirk.schmidt@gmail.com
**License:** Apache 2.0

---

## Overview

This repository contains a full quantitative research pipeline investigating
leader-follower dynamics and regime-aware signal discovery in cryptocurrency markets.

The central finding: **market regime is the primary determinant of signal validity.**
A strategy that works in a bull market fails in a bear market, and vice versa.
The framework -- not just the signals -- is the durable contribution.

---

## Research Pipeline

| Stage | Notebook | Rendered | Description |
|-------|----------|---------|-------------|
| 000 | [000_overview.ipynb](project/000_overview.ipynb) | [HTML](docs/000_overview.html) | Structure, hypothesis, and pipeline map |
| 001 | [001_download.ipynb](project/notebooks/001_download.ipynb) | [HTML](docs/001_download.html) | Data acquisition -- Binance OHLCV, 9 crypto pairs |
| 002 | [002_enrich.ipynb](project/notebooks/002_enrich.ipynb) | [HTML](docs/002_enrich.html) | Feature engineering -- returns, volatility, z-scores |
| 003 | [003_analysis.ipynb](project/notebooks/003_analysis.ipynb) | [HTML](docs/003_analysis.html) | Shock detection and cross-asset structure |
| 003a | [003a_regime_classification.ipynb](project/notebooks/003a_regime_classification.ipynb) | [HTML](docs/003a_regime_classification.html) | Regime segmentation, ADSR characterization, tradability filter |
| 004 | [004_strategy.ipynb](project/notebooks/004_strategy.ipynb) | [HTML](docs/004_strategy.html) | Signal construction and trade mapping |
| 005 | [005_backtest.ipynb](project/notebooks/005_backtest.ipynb) | [HTML](docs/005_backtest.html) | Backtesting, stress testing, statistical validation |
| 006 | [006_writeup.ipynb](project/006_writeup.ipynb) | [HTML](docs/006_writeup.html) | Final research writeup -- the full story |

> Start with [000_overview](docs/000_overview.html) for the plan.
> End with [006_writeup](docs/006_writeup.html) for the battle scars.

---

## Key Results

### Primary Strategy (Stage 004/005)

Conditioned lead-lag signal requiring t+0 institutional execution:

| Metric | Value |
|--------|-------|
| t-statistic | 2.641 |
| p-value | 0.0091 |
| Sharpe (t+0, 20bps) | 3.325 |
| Sharpe 95% CI (Lo 2002) | [2.725, 3.925] |
| Walk-forward fold 1 | 4.26 |
| Walk-forward fold 2 | 3.85 |
| Walk-forward fold 3 | 1.75 |

**Note:** requires same-session execution (t+0). Collapses at t+1.
Designed for institutional participants with direct market access.

### Regime-Specific Signals (Stage 003a)

Three signals passed the formal tradability filter:

| Signal | n | Mean | Win% | p-value |
|--------|---|------|------|---------| 
| ADA/XRP shock -- BEAR/DRAGON regime, t+1 to t+5 | 13 | +5.17% | 92% | 0.001 |
| ADA/XRP shock -- BEAR/DRAGON regime, t+1 to t+10 | 13 | +6.13% | 92% | 0.005 |
| All-coin panic recovery | 53 | +2.58% | 62% | 0.004 |

### Dragon Events (Here Be Dragons)

Five major multi-coin simultaneous shocks identified and documented.
Excluded from systematic strategies. See Stage 003a for full documentation.

---

## Regime Classification

| Regime | Condition | Days | Frequency |
|--------|-----------|------|-----------| 
| BULL | BTC 60d return > +10% | 491 | 39.5% |
| BEAR | BTC 60d return < -15% | 147 | 11.8% |
| TRANSITION | Between thresholds | 539 | 43.4% |
| DRAGON | 8+ coins shocked simultaneously | 5 | 0.4% |

---

## Rendered Documents

All notebooks are pre-rendered to HTML in the [docs/](docs/) folder.
Open locally in any browser -- no Jupyter required.

| Document | Description |
|----------|-------------|
| [000_overview.html](docs/000_overview.html) | The plan -- hypothesis and pipeline map |
| [001_download.html](docs/001_download.html) | Data acquisition |
| [002_enrich.html](docs/002_enrich.html) | Feature engineering |
| [003_analysis.html](docs/003_analysis.html) | Shock detection |
| [003a_regime_classification.html](docs/003a_regime_classification.html) | Regime framework -- the core contribution |
| [004_strategy.html](docs/004_strategy.html) | Signal construction |
| [005_backtest.html](docs/005_backtest.html) | Validation and results |
| [006_writeup.html](docs/006_writeup.html) | The full story -- call me Ishmael |

To regenerate the HTML docs after re-running notebooks:

```bash
bash scripts/export_notebooks.sh
```

---

## How to Run

### Requirements

```bash
pip install pandas numpy scipy matplotlib python-binance
```

### Execution Order

```
001_download -> 002_enrich -> 003_analysis -> 003a_regime_classification
             -> 004_strategy -> 005_backtest
```

Then open `project/006_writeup.ipynb` for the full research narrative.

**Note:** Each stage reads from the previous stage's `output/` artifacts.
Delete `output/` and rerun from 001 for a fully clean rebuild.

---

## Research Honesty

This pipeline was rebuilt approximately five times. The research journal in
[006_writeup.html](docs/006_writeup.html) documents every iteration -- what was
wrong, what was fixed, and what was learned. Negative results and anti-patterns
are documented alongside positive findings.

See [FINDINGS.md](FINDINGS.md) for a complete catalogue of all signals tested,
passed, and rejected.

---

## License

Copyright 2026 Wayne Kirk Schmidt

Licensed under the Apache 2.0 License.
