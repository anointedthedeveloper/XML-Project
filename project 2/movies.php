<?php
header("Content-Type: application/xml; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
echo file_get_contents("movies.xml");
