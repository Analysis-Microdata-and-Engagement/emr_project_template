# EMR Standard Python Project Structure

This is a tool to quickly and easily start a new project following EMR guidelines with no effort!
By using this you will be 

* Following the EMR guidelines
* Using best practice
* Have some documentation already written!

### 3. Run the install commands

You need to install your python package. This will make PIP track it like any other package, cool!

In a terminal run:

```bash
# pip install -e path_to_setup.py
# path_to_setup.py is the windows path to this file
# In the terminal if you are in the same location as the project you can run

pip install -e ./
```

If you want to unistall the package you can run:
```bash
# package_name is whatever you renamed xxxx_python_package to
pip uninstall package_name
```

## Project Strucure

Folders
* data - Include any local data in this folder. If your project does not use local data, e.g in DAP you are using HUE
* analysis - Include pieces of analysis in this folder
* docs - Documentation for the project. This could be markdown files, word documents etc
* xxxx_python_package - Details below
* tests - Details below

Files
* .gitignore - files to not be uploaded to GitLab. Use to prevent sensentive documents/data being made available on the ONS GitLab
* README.md - This file! This is the high level documentation for the project. This is the first documentation people will see.
* requirements.txt - “Requirements files” are files containing a list of packages to be installed using pip install
* setup.py - See below

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


