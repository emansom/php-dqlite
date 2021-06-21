--TEST--
test2() Basic test
--SKIPIF--
<?php
if (!extension_loaded('dqlite')) {
    echo 'skip';
}
?>
--FILE--
<?php
var_dump(test2());
var_dump(test2('PHP'));
?>
--EXPECT--
string(11) "Hello World"
string(9) "Hello PHP"
