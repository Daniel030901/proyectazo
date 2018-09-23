<?php
#$filepath para guardar prro
$m=$_GET['selecciona'];
#echo $m;
echo ' <img src="barcode.php?text='.$m.'&size=50&orientation=horizontal&
 codetype=Code39&print=true&sizefactor=2"/>';
 echo "</br>";
 echo '<a href="barcode.php?text=123456789&size=50&orientation=horizontal&
  codetype=Code39&print=true&sizefactor=2">Generar</a>';
 ?>
