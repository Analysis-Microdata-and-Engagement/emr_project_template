@echo off


IF /I "%1"=="help" GOTO help
IF /I "%1"=="setup" GOTO setup
IF /I "%1"=="test" GOTO test
IF /I "%1"=="docs" GOTO docs
GOTO error

:help
	@echo.
	@echo --------------------------HELP-------------------------------
	@echo setup - run the first time when you setup the project
	@echo test  - run tests quickly with the default Python test suite
	@echo docs  - create the documentation for the project
	@echo ------------------------------------------------------------
	@echo.
	GOTO :EOF

:setup
	pip install -r requirements.txt
	pip install ./
	pre-commit install
	GOTO :EOF

:test
	pytest
	GOTO :EOF

:docs
	PUSHD docs && POPD
	make html
	open _build/html/index.html
	GOTO :EOF

:error
    IF "%1"=="" (
        ECHO make: *** No targets specified and no makefile found.  Stop.
    ) ELSE (
        ECHO make: *** No rule to make target '%1%'. Stop.
    )
    GOTO :EOF
