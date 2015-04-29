<?php
processFile('query.txt');

function processFile($filename){
	if(is_file($filename)){
		$file = fopen($filename, "r");
		readLines($file);
		fclose($file);
	}else{
		echo "$filename 'is not a valid file.";
	}
}

function readLines($file){
	while(!feof($file)){
		if($line = fgets($file)){
			$input = preg_split("/[\s]+/", $line); //Necesaria expr_reg: puede estar separado por varios espacios o varios tabuladores
			resolv($input[0], $input[1]);
		}
	}
}

function resolv($hostname, $type){
	$resolved = dns_get_record($hostname, DNS_PTR);
	echo "\n----------\n";
	print_r($resolved);
}

?>