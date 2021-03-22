![](https://user-images.githubusercontent.com/45692573/109661256-b2fe8180-7b61-11eb-87c7-3d58cbea8d4b.png)

* Documentation: https://cookiecutter-pypackage.readthedocs.io/
* Free software: BSD license

## Quickstart

Install the latest Cookiecutter if you haven't installed it yet (this requires
Cookiecutter 1.4.0 or higher)


```python
pip install -U cookiecutter
```

Run the project template builder using
```bash
cookiecutter https://github.com/Kiki-Jiji/emr_cookiecutter
```

# EMR Standard Python Project Structure

This is a tool to quickly and easily start a new project following EMR guidelines with no effort!
By using this you will be 

* Following the EMR guidelines
* Using best practice
* Have some documentation already written!

## Project Strucure

Folders
* data - Include any local data in this folder. If your project does not use local data, e.g in DAP you are using HUE
* analysis - Include pieces of analysis in this folder
* docs - Documentation for the project. This could be markdown files, word documents etc
* {{cookiecutter.project_name}} - Details below
* tests - Details below

Files
* .gitignore - files to not be uploaded to GitLab. Use to prevent sensentive documents/data being made available on the ONS GitLab
* README.md - This file! This is the high level documentation for the project. This is the first documentation people will see.
* requirements.txt - “Requirements files” are files containing a list of packages to be installed using pip install
* setup.py - See below

## Virtual environments

To address the issue of maintaining different versions of packages for different projects, Python uses the concept of virtual environments. A virtual environment is a complete copy of the Python interpreter. When you install packages in a virtual environment, the system-wide Python interpreter is not affected, only the copy is. So the solution to have complete freedom to install any versions of your packages for each projects is to use a different virtual environment for each project. Virtual environments have the added benefit that they are owned by the user who creates them, so they do not require an administrator account.

### Optional folders
This stucture is recommended but feel free to edit to match your project needs. In particular:

* If you don't use local data then feel free to delete the data folder
* If you are currently uncomfortable with writing tests then you can leave this for now
>  However we would recommend that you don't delete this folder, save it for later when you feel comfortable with writing tests! This is recommended best practice
* If you store the project documentation elsewhere then you can delete this folder
> Be aware that RAP Guidelines state:
> Contain well-commented code and have documentation embedded within the product, rather than saved elsewhere.



## Further Details on files for the curious 

### requirements.txt

You should list packages that your package uses in the `requirements.txt` file.
Listing your package depencencies ensures that these packages are also installed when someone installs your package.
Explicitly stating versions of dependencies can increase the reproducibility in the function of your package that might depend on particular versions of other packages.

### setup.py

This file sits outside of the folder containing your package code.
It contains the instructions that the `setuptools` library uses to build and install your package.
These are provided using the `setup` function, including:

* author and/or maintainer contact details
* the folders to install, or use setuptools.find_packages()
* install_requires - other packages that this package depends on
* classifiers that describe the required major python version and operating system - this is necessary for uploading a package to PyPI

For detailed usage of setup() see the setuptools [documentation](https://setuptools.readthedocs.io/en/latest/setuptools.html#developer-s-guide)



