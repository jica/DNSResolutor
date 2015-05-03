#!/usr/bin/php
<?php

if ($argc != 3 ) {
  //La entrada no es correcta
?>
Éste es un script PHP de línea de comandos con un parámetro.

  Uso:
  <?php echo $argv[0]; ?> <parámetro>

  <parámetro> puede ser alguna palabra que desee
  mostrar en pantalla. Con las opciones --help, -help, -h,
  o -?, puede mostrarse esta ayuda.

<?php
}else {
  $dir = $argv[1];
  $type = $argv[2];
  $resolved = dns_get_record($dir,constant('DNS_'.$type));
  echo $dir.' - '.$type;
  print_r($resolved);  
}
?>
