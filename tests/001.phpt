--TEST--
Check if dqlite is loaded
--SKIPIF--
<?php
if (!extension_loaded('dqlite')) {
    echo 'skip';
}
?>
--FILE--
<?php
echo 'The extension "dqlite" is available';
?>
--EXPECT--
The extension "dqlite" is available
