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

```md
CN-UFAM/
├── python-codes/
│   ├── direct_methods/
|   |   ├── GaussElimin.py
|   │   └── LUDecomp.py
│   ├── interactive_methods/
|   |   ├── Jacobi.py
|   └── └── GaussSeidel.py
├── scilab/
│   ├── direct_methods/
|   |   ├── gaussSimplified_1.sce
|   └── └── gaussElimin.sce
├── README.md
└── LICENSE
```

- `python-codes/` — Python scripts for solving linear systems
    - `direct_methods/` — SLE solution process based on direct methods
    - `iteractive_methods/` — SLE solution process based on iteractive methods
- `scilab/` — Scilab `.sce` files for solving linear systems
    - `direct_methods/` — SLE solution process based on direct methods
        - `direct_method_XX.sce` — a solution example using manual solving calculations for the method
        - `direct_method.sce` — a solution method considering the solution process presented throughout the course

---

## Python Setup & Execution

### 1. Install Python and VSCode

- **Windows/Mac/Linux:** Download and install Python from [python.org](https://www.python.org/downloads/).
    - _**Test Python install:**_ open a terminal and execute: `python --version` _OR_ `python3 --version`
- _(Optional)_ - Install VSCode for execution and file management from [code.visualstudio.com](https://code.visualstudio.com/Download).

### 1.1. Install Python requirements

Open a terminal (Command Prompt, PowerShell, or Terminal) and run:

```bash
cd CN-UFAM/python-codes
pip install -r requirements.txt
```

> [!WARNING]
> If on linux/mac, use the `sudo ...` option before commands!
> If on Windows, please start the Command Prompt or PowerShell as admin user!

### 1.3. Run Python Scripts

Navigate to the `python-codes` folder:

```bash
cd CN-UFAM/python-codes
```

Run a script (replace `<script_name>.py` with the file you desire):

```bash
python <script_name>.py
```
_OR_
```bash
python3 <script_name>.py
```

> [!NOTE]
> Please observe that codes have their solution callout at the end of the script file, so change Ab matrix values before execution for the example you desire!

---

## Scilab Setup & Execution

### 1. Install Scilab

- Download and install Scilab from [scilab.org](https://www.scilab.org/download/latest).
- For Windows and Linux, observe the install for scilab-cli as well, this will ease the use of the code files in this repository.

### 2. Run `.sce` Files

1. Open Scilab.
2. Use `File > Open` to select your `.sce` file from the `CN-UFAM/scilab` folder.
3. Click `Execute` or press `F5` to run the script.

_Alternatively, from the Scilab console:_
```scilab
exec('path/to/your/script.sce');
```
_OR, from command console:_
```bash
cd CN-UFAM/scilab/{solution-method}
scilab -nwni -f scrip_file.sce
```
> [!NOTE]
> Change {solution-method} for any of the solution method group folders inside scilab or python codes.
> Change `script_file.sce` 

---

## Notes

- Ensure you have any versions of Python that is `>= 12.0` and the latest Scilab for best compatibility.
- If you encounter issues, check your installation paths and environment variables.

---
## License

This repository is licensed under the [Creative Commons Attribution 4.0 International License (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

You are free to copy, modify, and reuse the contents of this repository for any purpose, including commercial use, provided that proper credit is given to the original author:

**© 2025 Felipe Manzoni. Licensed under CC BY 4.0.**

When using or modifying this work, please include the following attribution:

> Based on work by Felipe S. Manzoni, licensed under CC BY 4.0.

__Happy coding!__