import pytest
from {{cookiecutter.python_package_name}} import emr_countdown

def test_only_ints_allowed():
    with pytest.raises(AssertionError):
        emr_countdown(2,4.2)

def test_numbers_must_add_to_six():
    with pytest.raises(AssertionError):
        emr_countdown(2,3)