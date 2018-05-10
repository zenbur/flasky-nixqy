from setuptools import setup

setup(
    name='zenbur-flask',
    version='0.1.0',
    long_description=__doc__,
    zip_safe=False,
    scripts=['app.py'],
    install_requires=['Flask']
)
