--TEST--
test1() Basic test
--SKIPIF--
<?php
if (!extension_loaded('dqlite')) {
    echo 'skip';
}
?>
--FILE--
<?php
$ret = test1();

var_dump($ret);
?>
--EXPECT--
The extension dqlite is loaded and working!
NULL
