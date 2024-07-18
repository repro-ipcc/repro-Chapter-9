# ipcc-ar6-wg1-figure Chapter 9

FAQ9.1 Figure1 / FAQ9.2 Figure1 
| Input | Running | Output | Quality | Post-process |
|-------|---------|--------|---------|--------------|
| ![Code](https://img.shields.io/badge/Code-Complete-green) <br> ![Dependence](https://img.shields.io/badge/Dependence-Complete-green) <br> ![Data](https://img.shields.io/badge/Data-Complete-green) | ![Running](https://img.shields.io/badge/Running-green) | ![Partial](https://img.shields.io/badge/1/1-Partial-orange) | ![Different](https://img.shields.io/badge/1/1-DIfferent-red) | ![Manual](https://img.shields.io/badge/Manual-orange) 

Fig.9.22 
| Input | Running | Output | Quality | Post-process |
|-------|---------|--------|---------|--------------|
| ![Code](https://img.shields.io/badge/Code-Complete-green) <br> ![Dependence](https://img.shields.io/badge/Dependence-Complete-green) <br> ![Data](https://img.shields.io/badge/Data-Complete-green) | ![Running](https://img.shields.io/badge/Running-green) | ![Full](https://img.shields.io/badge/1/1-Full-green) | ![Similiar](https://img.shields.io/badge/1/1-Similiar-orange) | ![Auto](https://img.shields.io/badge/Auto-orange) 


Fig.9.19
| Input | Running | Output | Quality | Post-process |
|-------|---------|--------|---------|--------------|
| ![Code](https://img.shields.io/badge/Code-Complete-green) <br> ![Dependence](https://img.shields.io/badge/Dependence-Complete-green) <br> ![Data](https://img.shields.io/badge/Data-Complete-green) | ![Running](https://img.shields.io/badge/Running-green) | ![Partial](https://img.shields.io/badge/7/1-Partial-orange)  | ![Similar](https://img.shields.io/badge/7/1-Similar-orange)  | ![Auto](https://img.shields.io/badge/Auto-orange) ![Manual](https://img.shields.io/badge/Manual-orange) |

Fig.9.24
| Input | Running | Output | Quality | Post-process |
|-------|---------|--------|---------|--------------|
| ![Code](https://img.shields.io/badge/Code-Complete-green) <br> ![Dependence](https://img.shields.io/badge/Dependence-Complete-green) <br> ![Data](https://img.shields.io/badge/Data-Complete-green) | ![Running](https://img.shields.io/badge/Running-green) | ![Partial](https://img.shields.io/badge/2/1-Partial-orange)  | ![Same](https://img.shields.io/badge/1/1-Same-green) <br>![Similar](https://img.shields.io/badge/1/1-Similar-orange)  | ![Auto](https://img.shields.io/badge/Auto-orange) ![Manual](https://img.shields.io/badge/Manual-orange) |

Project to re-create the IPCC AR6 WG1 figures. See https://ipcc.ch and https://github.com/IPCC-WG1

The instructions are meant to run a recent ubuntu Linux system.

Download the Anaconda Miniforge installer from:
https://conda-forge.org/miniforge/

Install Miniforge:
sh Miniforge3*.sh

Disconnect from your shell and reconnect to install the new commands.

Clone this repository and connect to it.

Install the submodules:
```sh
git submodule init
git submodule update
```

<!-- Download the dataset:

```sh
bash download.sh
``` -->

Install the conda environment:

```sh
bash install.sh
```

To re-create the figure of Chapter 6 Figure SM5:

```sh
bash run.sh
```

The figures are generated in the root path.

## Issue

### 2024-06-19

Cannot find data-input-large and data-output-large.
FAQ figure is differnt, cannot figure out the generated figures are what.
