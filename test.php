<?php
include("md5scratch.php");
$md5 = new Hash\MD5();
$md5->pump('test');
$hash = $md5->finalize();
echo $hash; // prints the md5 hash
?>