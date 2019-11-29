<?php
/* $m = new MongoClient("mongodb://192.168.4.51:27051,192.168.4.52:27052,192.168.4.53:27053"); */
$m = new Mongo("mongodb://192.168.4.50:27050");
$db = $m->db1;
$c = $db->t1;
$data=array("name"=>"bob","age"=>19);
$c->insert($data);
echo  "data ok";
?>
