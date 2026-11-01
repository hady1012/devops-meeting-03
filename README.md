# Meeting 03 — Build, Test & CI

This directory is the **Git repository root**. The workflow must be at `.github/workflows/ci.yml`.

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt -r requirements-dev.txt
python -m compileall -q app.py
python -m pytest -q
```

Create a GitHub repository, push this root folder, open Actions, and inspect the result. Never commit `.venv`.

For the deliberate failure exercise, change `assert response.status_code == 200` to `assert response.status_code == 201` in `tests/test_app.py` on a feature branch; push, open a PR, inspect failed logs; restore 200, commit and push.
