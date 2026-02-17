# scikit-surprise

**Surprise** (Simple Python RecommendatIon System Engine) is a Python scikit for building and analyzing recommender systems that deal with **explicit rating data**.

## Features

- **Easy to use** — Load built-in datasets (Movielens, Jester) or your own, run cross-validation and metrics (RMSE, MAE), tune with GridSearchCV.
- **Rich set of algorithms** — Baseline, NormalPredictor, SVD, SVD++, NMF, Slope One, k-NN, Co-Clustering, and more. Multiple similarity measures (cosine, MSD, Pearson).
- **Documentation and control** — Clear docs and full control over data handling, evaluation, and custom algorithms.
- **Scikit-learn friendly** — CV iterators and tooling inspired by scikit-learn.

## Quick start

```python
from surprise import SVD, Dataset, cross_validate

data = Dataset.load_builtin('ml-100k')
algo = SVD()
cross_validate(algo, data, measures=['RMSE', 'MAE'], cv=5, verbose=True)
```

## Installation

```bash
pip install scikit-surprise
```

Requires a C compiler (Windows users may prefer conda).  
Conda: `conda install -c conda-forge scikit-surprise`

## Requirements

- Python >= 3.12
- NumPy >= 2.4.2, SciPy >= 1.17.0, joblib >= 1.5.3

## Links

- **Documentation:** https://surprise.readthedocs.io/
- **Homepage:** https://surpriselib.com
- **Source:** https://github.com/NicolasHug/Surprise
- **License:** BSD 3-Clause

## Citation

```bibtex
@article{Hug2020,
  doi = {10.21105/joss.02174},
  url = {https://doi.org/10.21105/joss.02174},
  year = {2020},
  publisher = {The Open Journal},
  volume = {5},
  number = {52},
  pages = {2174},
  author = {Nicolas Hug},
  title = {Surprise: A Python library for recommender systems},
  journal = {Journal of Open Source Software}
}
```

---

### What's new in this release

- **Python 3.13 support** — Tested and supported on Python 3.13.
- **NumPy 2.x compatibility** — Cython code updated (e.g. `np.int_t` → `np.int64_t` in co-clustering) for NumPy 2.0 and modern toolchains.
