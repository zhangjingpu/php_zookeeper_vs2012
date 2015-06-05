dnl $Id$
dnl config.m4 for extension zookeeper

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(zookeeper, for zookeeper support,
dnl Make sure that the comment is aligned:
dnl [  --with-zookeeper             Include zookeeper support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(zookeeper, whether to enable zookeeper support,
dnl Make sure that the comment is aligned:
dnl [  --enable-zookeeper           Enable zookeeper support])

if test "$PHP_ZOOKEEPER" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-zookeeper -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/zookeeper.h"  # you most likely want to change this
  dnl if test -r $PHP_ZOOKEEPER/$SEARCH_FOR; then # path given as parameter
  dnl   ZOOKEEPER_DIR=$PHP_ZOOKEEPER
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for zookeeper files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       ZOOKEEPER_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$ZOOKEEPER_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the zookeeper distribution])
  dnl fi

  dnl # --with-zookeeper -> add include path
  dnl PHP_ADD_INCLUDE($ZOOKEEPER_DIR/include)

  dnl # --with-zookeeper -> check for lib and symbol presence
  dnl LIBNAME=zookeeper # you may want to change this
  dnl LIBSYMBOL=zookeeper # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $ZOOKEEPER_DIR/lib, ZOOKEEPER_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_ZOOKEEPERLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong zookeeper lib version or lib not found])
  dnl ],[
  dnl   -L$ZOOKEEPER_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(ZOOKEEPER_SHARED_LIBADD)

  PHP_NEW_EXTENSION(zookeeper, zookeeper.c, $ext_shared)
fi
