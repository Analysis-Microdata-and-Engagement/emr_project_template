@echo off


IF /I "%1"=="help" GOTO help
IF /I "%1"=="setup" GOTO setup
IF /I "%1"=="test" GOTO test
IF /I "%1"=="docs" GOTO docs
IF /I "%1"=="act" GOTO act
IF /I "%1"=="deact" GOTO deact
GOTO error

:help
	@echo "---------------HELP-----------------------------------------"
	@echo "setup - run the first time when you setup the project"
	@echo "test  - run tests quickly with the default Python test suite"
	@echo "docs  - create the documentation for the project"
	@echo "act   - ACTivate the conda enviroment"
	@echo "deact - DEACTivate the conda enviroment
	@echo "------------------------------------------------------------"
	GOTO :EOF

:setup
	conda create -n {{cookiecutter.project_name}}
	act
	conda install pip
	pip install -r requirements.txt
	pip install ./
	GOTO :EOF

:test
	pytest
	GOTO :EOF

:docs
	PUSHD docs && POPD
	make html
	open _build/html/index.html
	GOTO :EOF

:act
	conda activate {{cookiecutter.project_name}}
	GOTO :EOF

:deact
	conda deactivate
	GOTO :EOF

:error
    IF "%1"=="" (
        ECHO make: *** No targets specified and no makefile found.  Stop.
    ) ELSE (
        ECHO make: *** No rule to make target '%1%'. Stop.
    )
    GOTO :EOF
