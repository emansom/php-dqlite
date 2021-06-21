dnl config.m4 for extension dqlite

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary.

dnl If your extension references something external, use 'with':

dnl PHP_ARG_WITH([dqlite],
dnl   [for dqlite support],
dnl   [AS_HELP_STRING([--with-dqlite],
dnl     [Include dqlite support])])

dnl Otherwise use 'enable':

PHP_ARG_ENABLE([dqlite],
  [whether to enable dqlite support],
  [AS_HELP_STRING([--enable-dqlite],
    [Enable dqlite support])],
  [no])

if test "$PHP_DQLITE" != "no"; then
  dnl Write more examples of tests here...

  dnl Remove this code block if the library does not support pkg-config.
  dnl PKG_CHECK_MODULES([LIBFOO], [foo])
  dnl PHP_EVAL_INCLINE($LIBFOO_CFLAGS)
  dnl PHP_EVAL_LIBLINE($LIBFOO_LIBS, DQLITE_SHARED_LIBADD)

  dnl If you need to check for a particular library version using PKG_CHECK_MODULES,
  dnl you can use comparison operators. For example:
  dnl PKG_CHECK_MODULES([LIBFOO], [foo >= 1.2.3])
  dnl PKG_CHECK_MODULES([LIBFOO], [foo < 3.4])
  dnl PKG_CHECK_MODULES([LIBFOO], [foo = 1.2.3])

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-dqlite -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/dqlite.h"  # you most likely want to change this
  dnl if test -r $PHP_DQLITE/$SEARCH_FOR; then # path given as parameter
  dnl   DQLITE_DIR=$PHP_DQLITE
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for dqlite files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       DQLITE_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$DQLITE_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the dqlite distribution])
  dnl fi

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-dqlite -> add include path
  dnl PHP_ADD_INCLUDE($DQLITE_DIR/include)

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-dqlite -> check for lib and symbol presence
  dnl LIBNAME=DQLITE # you may want to change this
  dnl LIBSYMBOL=DQLITE # you most likely want to change this

  dnl If you need to check for a particular library function (e.g. a conditional
  dnl or version-dependent feature) and you are using pkg-config:
  dnl PHP_CHECK_LIBRARY($LIBNAME, $LIBSYMBOL,
  dnl [
  dnl   AC_DEFINE(HAVE_DQLITE_FEATURE, 1, [ ])
  dnl ],[
  dnl   AC_MSG_ERROR([FEATURE not supported by your dqlite library.])
  dnl ], [
  dnl   $LIBFOO_LIBS
  dnl ])

  dnl If you need to check for a particular library function (e.g. a conditional
  dnl or version-dependent feature) and you are not using pkg-config:
  dnl PHP_CHECK_LIBRARY($LIBNAME, $LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $DQLITE_DIR/$PHP_LIBDIR, DQLITE_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_DQLITE_FEATURE, 1, [ ])
  dnl ],[
  dnl   AC_MSG_ERROR([FEATURE not supported by your dqlite library.])
  dnl ],[
  dnl   -L$DQLITE_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(DQLITE_SHARED_LIBADD)

  dnl In case of no dependencies
  AC_DEFINE(HAVE_DQLITE, 1, [ Have dqlite support ])

  PHP_NEW_EXTENSION(dqlite, dqlite.c, $ext_shared)
fi
