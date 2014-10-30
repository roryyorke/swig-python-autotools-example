This is an example of how to use GNU Autotools to build and install a
Python SWIG-generate module that links against a library.

All non-Autotools files, in particular the SWIG outputs, can be built
out-of-tree.

Non-root installation is possible, but requires that you set
PYTHONPATH appropriately.  You shouldn't have to set LD_LIBRARY_PATH
to use the Python module.

See 'demo.sh' for an example of all of this.

In a real project you would probably add ax_python_devel.m4,
ax_pkg_swig, and ax_swig_python to m4/.

[![Build Status](https://travis-ci.org/roryyorke/swig-python-autotools-example.svg?branch=master)](https://travis-ci.org/roryyorke/swig-python-autotools-example)
