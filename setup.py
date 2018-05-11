from setuptools import setup

setup(
    name='zenbur-flask',
    version='1.0.0',
    long_description=__doc__,
    zip_safe=False,
    scripts=['app.py'],
    install_requires=['Flask']
)
