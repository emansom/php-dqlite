/* dqlite extension for PHP */

#ifndef PHP_DQLITE_H
# define PHP_DQLITE_H

extern zend_module_entry dqlite_module_entry;
# define phpext_dqlite_ptr &dqlite_module_entry

# define PHP_DQLITE_VERSION "0.1.0"

# if defined(ZTS) && defined(COMPILE_DL_DQLITE)
ZEND_TSRMLS_CACHE_EXTERN()
# endif

#endif	/* PHP_DQLITE_H */
