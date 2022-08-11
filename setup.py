from setuptools import setup
from setuptools import find_packages

setup(
    name='testpackage',
    version='0.0.1',
    packages=find_packages('src'),
    package_dir = {'': 'src'},
    extra_requires={
        'dev' : ['pytest']
    },
    install_requires=[
        'requests',
        'importlib-metadata; python_version == "3.8"',
    ]
)