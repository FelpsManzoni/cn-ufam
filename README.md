# SLE solution algorithms

This project contains the executable code files for python and .sce (Scilab) platforms that implement the direct and interactive solution methods for the resolution of Systems of Linear Equations.

This project was developed in terms for the lecture of Numerical Analysis course in the Federal University of Amazonas (UFAM) by the teacher Felipe S. Manzoni.

__The implementations here are based on the book:__
- _CAMPOS FILHO, Frederico. __Algoritmos Numéricos__. 2ª Edição. Editora LTC, 2007. ISBN: 9788521615378_.

__And on the course instructions from UFRGS:__
- https://www.ufrgs.br/reamat/CalculoNumerico/livro-py/main.html
- https://www.ufrgs.br/reamat/CalculoNumerico/livro-sci/main.html

# Linear Equation System Solution Methods

This project contains implementations for solving linear equation systems using both Python (with NumPy) and Scilab.

## Folder Structure

- `python/` — Python scripts for solving linear systems
- `scilab/` — Scilab `.sce` files for solving linear systems

---

## Python Setup & Execution

### 1. Install Python

- **Windows/Mac/Linux:** Download and install Python from [python.org](https://www.python.org/downloads/).

### 2. Install NumPy

Open a terminal (Command Prompt, PowerShell, or Terminal) and run:

```bash
pip install numpy
```

### 3. Run Python Scripts

Navigate to the `python` folder:

```bash
cd python
```

Run a script (replace `<script_name>.py` with your file):

```bash
python <script_name>.py
```

---

## Scilab Setup & Execution

### 1. Install Scilab

- Download and install Scilab from [scilab.org](https://www.scilab.org/download/latest).

### 2. Run `.sce` Files

1. Open Scilab.
2. Use `File > Open` to select your `.sce` file from the `scilab` folder.
3. Click `Execute` or press `F5` to run the script.

Alternatively, from the Scilab console:

```scilab
exec('path/to/your/script.sce');
```

---

## Notes

- Ensure you have the latest versions of Python and Scilab for best compatibility.
- If you encounter issues, check your installation paths and environment variables.

---
## License

This repository is licensed under the [Creative Commons Attribution 4.0 International License (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

You are free to copy, modify, and reuse the contents of this repository for any purpose, including commercial use, provided that proper credit is given to the original author:

**© 2025 Felipe Manzoni. Licensed under CC BY 4.0.**

When using or modifying this work, please include the following attribution:

> Based on work by Felipe S. Manzoni, licensed under CC BY 4.0.

__Happy coding!__