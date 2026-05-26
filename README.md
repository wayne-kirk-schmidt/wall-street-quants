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

| Stage | Notebook | Description |
|-------|----------|-------------|
| 000 | project/000_overview.ipynb | Structure, hypothesis, and pipeline map |
| 001 | project/notebooks/001_download.ipynb | Data acquisition -- Binance OHLCV, 9 crypto pairs |
| 002 | project/notebooks/002_enrich.ipynb | Feature engineering -- returns, volatility, z-scores |
| 003 | project/notebooks/003_analysis.ipynb | Shock detection and cross-asset structure |
| 003a | project/notebooks/003a_regime_classification.ipynb | Regime segmentation, ADSR characterization, tradability filter |
| 004 | project/notebooks/004_strategy.ipynb | Signal construction and trade mapping |
| 005 | project/notebooks/005_backtest.ipynb | Backtesting, stress testing, statistical validation |
| 006 | project/006_writeup.ipynb | Final research writeup -- the full story |

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

## How to Run

### Requirements

```bash
pip install pandas numpy scipy matplotlib python-binance
```

### Execution Order

Run notebooks in sequence from the project/notebooks/ directory:

```
001_download -> 002_enrich -> 003_analysis -> 003a_regime_classification
             -> 004_strategy -> 005_backtest
```

Then open project/006_writeup.ipynb for the full research narrative.

**Note:** Each stage reads from the previous stage's output/ artifacts.
Delete output/ and rerun from 001 for a fully clean rebuild.

---

## Research Honesty

This pipeline was rebuilt approximately five times. The research journal in
006_writeup.ipynb documents every iteration -- what was wrong, what was fixed,
and what was learned. Negative results and anti-patterns are documented alongside
positive findings.

See FINDINGS.md for a complete catalogue of all signals tested, passed, and rejected.

---

## License

Copyright 2026 Wayne Kirk Schmidt

Licensed under the Apache 2.0 License.
