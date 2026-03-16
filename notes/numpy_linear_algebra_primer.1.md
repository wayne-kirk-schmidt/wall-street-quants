# Core Linear Algebra Operations in NumPy

This note explains the *global* matrix operations that NumPy deliberately exposes as **functions**, not operators.
Each section includes intuition, syntax, examples, and practical cautions.

We use a single example matrix throughout:

```python
import numpy as np

A = np.array([[4, 2],
              [1, 3]])
```
---

## 1. Inverse

### Meaning
The inverse matrix \(A^{-1}\) *undoes* the effect of `A`.

\[
A^{-1} A = I
\]

An inverse exists only if `A` is:
- square
- full rank
- numerically well-conditioned

### NumPy
```python
A_inv = np.linalg.inv(A)
```

### Example
```python
A_inv =
[[ 0.3 -0.2]
 [-0.1  0.4]]
```

Check:
```python
A_inv @ A   # ≈ identity
```

### Caution
Do **not** compute inverses just to solve systems.

Prefer:
```python
np.linalg.solve(A, b)
```

---

## 2. Determinant

### Meaning
The determinant measures:
- area / volume scaling
- invertibility
- orientation (sign)

If `det(A) == 0`, the matrix is **not invertible**.

### NumPy
```python
np.linalg.det(A)
```

### Example
```python
det(A) = 10.0
```

Interpretation:
- scales area by 10×
- non-zero → invertible

### Caution
Determinants are numerically unstable for large matrices.
Use rank or condition numbers for diagnostics.

---

## 3. Eigenvalues (and Eigenvectors)

### Meaning
Eigenvectors keep their direction under transformation by `A`.

\[
A v = \lambda v
\]

Eigenvalues describe:
- scaling factors
- stability
- dominant directions

### NumPy
```python
vals, vecs = np.linalg.eig(A)
```

### Example
```python
vals = [5., 2.]
```

Interpretation:
- one direction scaled by 5
- one direction scaled by 2

### Caution
- eigenvectors are not unique
- ordering is arbitrary
- for symmetric matrices, prefer:

```python
np.linalg.eigh(A)
```

---

## 4. Norm

### Meaning
A norm measures **size**, but many definitions exist.

Default matrix norm = Frobenius norm:

\[
||A||_F = \sqrt{\sum A_{ij}^2}
\]

### NumPy
```python
np.linalg.norm(A)
```

### Example
```python
np.linalg.norm(A) ≈ 5.477
```

### Other norms
```python
np.linalg.norm(A, ord=1)        # max column sum
np.linalg.norm(A, ord=np.inf)  # max row sum
```

### Caution
Norm choice changes interpretation.
Always specify when it matters.

---

## 5. Trace

### Meaning
The trace is the sum of diagonal elements.

\[
\text{tr}(A) = \sum A_{ii}
\]

Equivalent to:
- sum of eigenvalues

### NumPy
```python
np.trace(A)
```

### Example
```python
np.trace(A) = 7
```

### Notes
- invariant under similarity transforms
- common in optimization and covariance math

---

## 6. Rank

### Meaning
Rank = number of **independent dimensions**.

Indicates:
- redundancy
- solvability
- effective dimensionality

### NumPy
```python
np.linalg.matrix_rank(A)
```

### Example
```python
rank(A) = 2
```

### Caution
Rank is computed using a numerical tolerance.
Floating-point behavior matters.

---

## Summary Table

| Concept | Meaning | NumPy |
|------|------|------|
| Inverse | undo matrix | `np.linalg.inv` |
| Determinant | volume / invertibility | `np.linalg.det` |
| Eigenvalues | invariant directions | `np.linalg.eig` |
| Norm | size / magnitude | `np.linalg.norm` |
| Trace | diagonal sum | `np.trace` |
| Rank | independent dimensions | `np.linalg.matrix_rank` |

---

## Meta Rule

**Operators** act locally and unambiguously.  
**Functions** act globally and carry assumptions.

That is why NumPy makes you spell these out.
