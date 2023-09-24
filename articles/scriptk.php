 <?php
$field1 = $_GET["str"];
//$field3 = $_GET["adress"];
//echo "$field1";
if (!empty($field1)) {
    $output = shell_exec("bash dharmdharak.sh '$field1' 'D'");
    #$output1=str_ireplace($field1, "<span style='background:yellow'>$field1</span>", $output);
} else {
    echo "Please enter some string to search";
}
#$output = shell_exec("/var/www/html/dharmdhara.sh '$field1'");
//$output = shell_exec('/var/www/html/dharmdhara.sh');
//echo "<pre>$output</pre>";
//echo "<pre><div style ='font:16px/21px Arial,tahoma,sans-serif;color:#ff0000'> $output </div></pre>";
//$output1=str_ireplace($field1, "<span style='background:yellow'>$field1</span>", $output);
echo "<pre>$output</pre>";
//echo "<pre><div style ='font:16px/21px Arial,tahoma,sans-serif;color:#ff0000'>$output1</div></pre>";
?> 
