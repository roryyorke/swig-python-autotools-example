# Autoconf file.  Run ./autogen.sh to generate configure, etc.

# typical init
AC_INIT([SwigExample],[0.0.1])

# foreign: non-GNU, don't check for NEWS, AUTHORS, etc.
AM_INIT_AUTOMAKE([foreign no-define])

# ask autotools to put extra macros in m4/
AC_CONFIG_MACRO_DIR([m4])

# Find python executable
AM_PATH_PYTHON

# Get CPPFLAGS, etc., for Python module compilation
# http://www.gnu.org/software/autoconf-archive/ax_python_devel.html
AX_PYTHON_DEVEL

# Find swig executable
# http://www.gnu.org/software/autoconf-archive/ax_pkg_swig.html
AX_PKG_SWIG([], [], [ AC_MSG_ERROR([SWIG is required to build.]) ])

# Get SWIGFLAGS, CPPFLAGS, etc., for Python generation by swig
# http://www.gnu.org/software/autoconf-archive/ax_swig_python.html
AX_SWIG_PYTHON

# Use libtool to link libraries and modules
LT_INIT

# We'll be compiling C files
AC_PROG_CC

AC_CONFIG_FILES([Makefile])

AC_OUTPUT
