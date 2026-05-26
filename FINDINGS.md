# Research Findings — Committed Results

## Finding 1: Tier 1 Single-Coin Persistent Faller — Buy the Dip

### Signal Definition
- A single Tier 1 coin (BTC, ETH, or XRP) experiences a negative shock of ≥ 2.0σ
- No other coin shocks simultaneously (idiosyncratic event)
- The coin is still negative at t+3 (persistent faller, not a quick bounce)
- The coin is still negative at t+6 (confirmation filter)

### Trade
- **Entry:** Buy at t+6 close
- **Exit:** Sell at t+39 close (~33 calendar days held)
- **Universe:** BTC, ETH, XRP only — Tier 2 and Tier 3 excluded

### Results (n=9 events, 2023–2026)
| Metric | Value |
|--------|-------|
| Win rate | 89% (8W / 1L) |
| Mean return | +15.5% |
| Median return | +21.0% |
| Worst case | -1.6% |
| Best case | +29.2% |
| Std deviation | 11.5% |

### Trade Frequency
- ~3–4 qualifying events per year
- Low frequency — selective opportunity play, not a systematic daily strategy

### Why It Works
BTC, ETH, and XRP *are* the market. When they drop alone, it is a temporary
dislocation — not a fundamental repricing. The market cannot reprice itself away.
Recovery is not guaranteed but is the strong base case.

### Why Tier 2 / Tier 3 Are Excluded
Lower cap coins (LTC, AVAX, DOGE) that fall alone are experiencing market
recalibration — the market is reassessing their fundamental value. These moves
do not reverse reliably and can compound into -25% or worse at t+39.
Tier 2 (BNB, SOL, ADA) has insufficient events to draw conclusions.

### Key Individual Events
| Date | Coin | Entry @t+6 | Exit @t+39 | Return |
|------|------|-----------|-----------|--------|
| 2023-10-02 | ETH | -1.8% | +24.9% | +27.2% |
| 2024-01-12 | BTC | -3.4% | +22.1% | +26.4% |
| 2024-06-07 | XRP | -4.3% | +15.9% | +21.0% |
| 2024-10-01 | ETH | -1.3% | +27.6% | +29.2% |
| 2025-08-14 | BTC | -2.9% | -4.5% | -1.6% ✗ |

### Honest Caveats
- n=9 is a thin sample — directionally strong but not statistically conclusive
- Two recent BTC events (Aug and Nov 2025) showed weaker recovery — edge may be moderating
- Requires patience — 33-day hold is a long time in crypto
- No transaction cost modeling at this hold period (daily rebalancing not required)

---

## Finding 2: All-9-Coin Panic Recovery (Preliminary)

### Signal Definition
- All 9 coins shock simultaneously at ≥ 2.0σ negative
- Market-wide panic event

### Preliminary Results (n=5 events)
- 80% positive by t+4 and t+5
- Mean recovery +4.6% by t+3
- Exception: Feb 24 2025 — continued falling for 30 days (macro bear trend)

### Status
Insufficient events for a robust trading strategy. Noted as a directional
observation. Requires further validation with longer data history.

---

## Open Questions for Further Research
1. Does the Tier 1 pattern hold on a longer dataset (pre-2023)?
2. Can z-score magnitude (2.0–2.5 vs 2.5+) further improve signal quality?
3. Does the 2-3 coin bucket offer complementary trading opportunities?
4. Is the Feb 2025 / Aug 2025 BTC weakness a regime change signal?
5. Tier 3 short side — can "market recalibration" events be traded short reliably?


---

## Finding 3: ETH Does NOT Follow BTC Recovery — Anti-Pattern

### The Intuition (Wrong)
ETH and BTC are highly correlated. When BTC drops and recovers,
ETH should follow. Therefore: buy ETH after a BTC shock and ride
the recovery.

### The Reality
Tested every entry day from t+2 through t+34 after a BTC -2σ shock.
Every single entry day produces negative mean returns.

| Entry Day | Mean Return | Win Rate |
|-----------|-------------|----------|
| t+2  | -6.50% | 21% |
| t+5  | -3.66% | 32% |
| t+10 | -4.88% | 25% |
| t+17 | -1.70% | 39% |
| t+30 | -1.07% | 32% |

ETH cumulative path after BTC shock drifts negative for 60+ days,
reaching 72-76% negative by t+30 to t+60.

### Why It Fails
ETH is not the long bond to BTC's short bond. The analogy breaks:
- BTC reprices fast and recovers — it IS the market
- ETH falls harder, stays down longer, and has no guaranteed backstop
- ETH behaves like leveraged BTC on the downside — same direction,
  bigger moves, slower recovery

### The Anti-Pattern Rule
> "ETH is correlated to BTC so it should recover when BTC does."
> **DO NOT trade this.** The correlation holds on the way down
> but ETH recovery lags BTC recovery by weeks to months, with
> no reliable entry point identified in 2023-2026 data.

### Practical Implication
If you want to trade the BTC shock recovery:
- **Buy BTC directly** (Finding 1 — 89% win rate, +15.5% mean)
- **Do not substitute ETH** as a "higher upside" play
- The extra volatility of ETH does not translate to extra return —
  it translates to extra loss

### Publication Value
This is a publishable negative result. It documents a commonly
assumed relationship that does not hold empirically, potentially
saving practitioners from a significant systematic loss.

---

## Finding 4: Day-of-Week Calendar Anomaly (Weak Signal)

### Observation
Wednesday has the highest mean daily return (+0.662%) across all
9 coins. Thursday has the lowest (-0.382%).

### Simulated Strategy
Buy Thursday close, sell following Wednesday close (~6 day hold).
Dollar-weight toward best Wednesday performers (SOL, DOGE, AVAX).

| Metric | Value |
|--------|-------|
| n | 139 trades |
| Mean return | +0.705% |
| Win rate | 51% |
| Cumulative | +144% |
| Annualized | ~44% |

### Honest Assessment
The 51% win rate and mean driven by outliers makes this fragile
as a standalone strategy. The Wednesday effect is real but thin.

**Best use: timing overlay.** If entering a position anyway,
prefer Thursday entry over Tuesday or Sunday entry. Free alpha
when combined with a primary signal.

### Do Not Trade Standalone
Too noise-dependent. One bad Wednesday (-7.88% worst case) can
wipe multiple weeks of gains.

---

## Finding 5: Post-Panic Recovery — Lower Caps Bounce Fastest

### Observation
After a market-wide multi-coin negative shock (≥4 coins at -2σ):
- ADA, DOGE recover fastest — positive mean by t+1
- ETH recovers slowest — negative mean through t+7, positive only at t+8
- XRP shows steady positive drift from t+1 through t+10 (+5%)

### Ranking (mean t+5 return after multi-coin shock)
| Coin | Mean t+5 | % Positive |
|------|----------|------------|
| DOGE | +1.85% | 58% |
| LTC  | +1.23% | 50% |
| ADA  | +0.85% | 61% |
| XRP  | +0.67% | 58% |
| AVAX | +1.00% | 62% |
| BNB  | -0.38% | 50% |
| SOL  | -0.82% | 53% |
| BTC  | -0.08% | 42% |
| ETH  | -1.78% | 45% |

### Interpretation
Lower cap coins overshoot on panic selloffs and snap back quickly.
Institutional coins (BTC, ETH) reprice more deliberately.

### Status
Directional observation. Not yet stress-tested as a standalone
trading strategy. Candidate for further research.


---

## Research Process Notes

### Rebuild Count: ~5 major iterations

1. Original pipeline (001-005, sections 1-15)
2. Statistical validation added (005a -- t-test, Lo CI, walk-forward)
3. Full notebook polish and cleanup
4. Execution reality check -- discovered t+0 constraint, aggregation bug,
   look-ahead bias in lag_5 conditioning
5. Regime framework (003a) -- full rebuild around regime awareness

Each rebuild was necessary. Each produced a better result.

### Key Bugs Found and Fixed

- Broken import in 005: matplotlib and scipy merged on one line
- Variable name mismatch: events_filtered vs event_filtered_df
- IntCastingNaNError in 004: dropna missing before astype(int)
- Aggregation bug in 005 Cell 18: first() instead of mean()
- Emojis and emdashes throughout: caused Windows font rendering failures
- ADA/XRP regime filter: excluded DRAGON dates, missing 2 of 7 events
- Stale references: 012_writeup, 005a persisted in some notebooks

### Key Insights That Changed the Direction

- t+0 execution requirement is a primary constraint, not a footnote
- Regime determines everything -- testing across mixed regimes is wrong
- ETH anti-pattern: does not recover after BTC shocks at any entry point
- Edge decay across walk-forward folds is a feature, not a bug -- it tells
  the market efficiency story
- ADSR framing maps formally correct impulse response concept to intuitive
  language

