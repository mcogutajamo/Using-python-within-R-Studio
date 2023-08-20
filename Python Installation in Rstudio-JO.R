# One time process when you install python for the first time
library(reticulate)
# Creating a new environment
version<-"3.10.6"
install_python(version = version)
virtualenv_create("my-python", python_version=version)

# Run this every time before using python
library(reticulate)
use_virtualenv("my-python", required = TRUE)

# Installing python packages
virtualenv_install(envname = "my-python",
                   "numpy",
                   ignore_installed = FALSE,
                   pip_options = character() )

virtualenv_install(envname = "my-python",
                   "pandas",
                   ignore_installed = FALSE,
                   pip_options = character() )

virtualenv_install(envname = "my-python",
                   "matplotlib",
                   ignore_installed = FALSE,
                   pip_options = character() )
