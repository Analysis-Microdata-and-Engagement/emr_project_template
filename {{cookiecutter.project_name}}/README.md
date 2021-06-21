# {{cookiecutter.project_name}}


## Project Description

(Provide more detailed overview of the project. Talk a bit about your data sources and what questions and hypothesis you are exploring. What specific data analysis/visualization and modelling work are you using to solve the problem? What blockers and challenges are you facing? Feel free to number or bullet point things here)


## First Time Setup

* Create virtual environment
* Run first time setup using `make`

>`make` is the standard interface for the project

### virtual environment

It's recommending to run this project in a virtual environments. 

> If you don't create a virtual enviroment the following actions will impact the system-wide Python interpreter

```shell
# This assumes a windows system using PowerShell terminal
# <name_of_enviroment> can be anything, BUT do not call it the same as your python package or the project name
# In this example we call it env

# $ python -m venv <name_of_enviroment>
$ python -m venv env

$ ./env/Scripts/activate

(env) $
```

> Notice how your prompt is now prefixed with the name of your environment

> *tip: use `deactivate` to exit virtualenv*

### Setup

Run `setup`. This does a number of steps

* Install dependencies
* Install the package locally
* Install pre-commit-hooks

```shell
./make.bat help # run this to get all available options

./make.bat setup
```
> `./make.bat` runs the program followed by the desired option  
> You can edit this to run additional project tasks

# Tests
```bash
./make.bat test
```
