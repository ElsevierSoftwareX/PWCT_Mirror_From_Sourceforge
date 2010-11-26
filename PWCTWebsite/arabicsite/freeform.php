<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>Web Form Mail Handler</title>
 <meta name="generator" content="Stormdance Antenna Web Design Studio">
 <link rel="stylesheet" type="text/css" href="antenna.css" id="css"></head>
 <body class="global" style="background-color:silver; color:black"><div style="overflow:auto; width:760px; margin-left:24px; margin-top:10px;">
 <br><b>Stormdance Antenna Web Design Studio, Freeform PHP Web Form Mail Script v3 ©2006-2010</b><br><br><hr>
<script type="text/javascript" language="javascript">
 var sText='Note: Your form was <b>not</b> sent.<br><br>Antenna Freeform requires a host with <b>PHP scripting</b> support.<br><br><ul><li>PHP scripting support <b>not</b> detected.</li><li>To send a form please publish your web site to a host that supports PHP scripting, and test the form online.</li></ul><br>Still no PHP scripting support after publishing and testing online?<br>Ask the company hosting your web site if they offer PHP scripting.  If so they may be able to enable it on your hosting account.<br><br><br><input type="button" value=" OK " onclick="history.go(-1)"><br><br><a href="http://www.stormdance.net">www.stormdance.net</a>';
 </script>
<!--
<?php
echo '/'.'/'.'-'.'-'.'>'; echo '<script type="text/javascript" language="javascript">';
 echo "sText='Host supports PHP scripting.  PHP version: ".phpversion()." detected.';"; echo '</script>'; echo '<'.'!'.'-'.'-'; ?>
//-->
<script type="text/javascript" language="javascript">document.write('<br>'+sText+'<br><br>');</script><!--<?php
/*><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>Web Form Mail Handler</title>
 <meta name="generator" content="Stormdance Antenna Web Design Studio">
 <link rel="stylesheet" type="text/css" href="antenna.css" id="css"></head>
 <body class="global" style="background-color:silver; color:black"><div style="overflow:auto; width:760px; margin-left:24px; margin-top:10px;">
 <br><b>Stormdance Antenna Web Design Studio, Freeform PHP Web Form Mail Script v3 ©2006-2010</b><br><br><hr><br>
 Note: Your form was <b>not</b> sent.<br><br>Antenna Freeform requires a host with <b>PHP scripting</b> support.<br><br><ul><li>PHP scripting support <b>not</b> detected.</li><li>To send a form please publish your web site to a host that supports PHP scripting, and test the form online.</li></ul><br><br>
 If you encounter any problems sending your form, you can obtain additional information using the form Test Mode.
 To enable test mode, open freeform.php in your Antenna project, set the test mode option to true and republish.
 <br><br><br><input type="button" value=" OK " onclick="history.go(-1)"><br><br><a href="http://www.stormdance.net">www.stormdance.net</a><br><br>
 </body></html><!--
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
. */
$etag = chr(62); $txt_endmask = '/'.'/'.'-'.'-'.$etag; $default_recipient = "webmaster"; $your_domain = "@domain.net";
 $default_success_page = "index.htm"; $default_error_page = "index.htm";
 $file_attachment_max_kbytes = "0";
function filter_tags($string){ $string = stripcslashes($string); $replaced_string = str_replace('<','<',$string);
 $replaced_string = str_replace($etag,$etag,$replaced_string); return $replaced_string; }
function underscore_to_space($string){ $replaced_string = str_replace('_',' ',$string); return $replaced_string; }
function tag_to_entity($string){ $replaced_string = htmlspecialchars($string); return $replaced_string; }
$site = dirname($_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF']); $referrer = $_SERVER['HTTP_REFERER']; if (!ereg($site,$referrer)) {
 echo "<!--" . $txt_endmask;
 echo "Referrer not recognised: $referrer.<br>Form must be sent from $site.  Please upload the form to $site."; exit; }
 if (count($_POST)<1) { echo "<!--" . $txt_endmask; echo "Empty form.  Nothing to send.<br><br><ul>";
 echo "<li>Check that your Submit button <i>Method</i> property is set to <b><i>POST</i></b>.</li>";
 echo "<li>Make sure that your Submit button is on the same layer as your form fields.</li></ul>"; exit; }
 $domain = $_SERVER['HTTP_HOST']; $posw = strpos($domain,'www.'); if ($posw !== false) $domain = substr($domain,$posw+4);
$recipient0="contact"; $recipient1="info"; $recipient2="webmaster"; $recipient3="contact"; $recipient4="info";
 $recipient5="webmaster";
$recipient=$_POST["recipient__"]; if ($recipient=="0") $recipient = $recipient0; if ($recipient=="1") $recipient = $recipient1;
 if ($recipient=="2") $recipient = $recipient2; if ($recipient=="3") $recipient = $recipient3;
 if ($recipient=="4") $recipient = $recipient4; if ($recipient=="5") $recipient = $recipient5;
 if ($recipient=="") $recipient = $recipient0; $pos = strpos($recipient,'@'); if ($pos === false) {
 $recipient = trim($recipient,"*,; "); $recipient .= "@" . $domain; }
$os = strtolower($_SERVER['SERVER_SOFTWARE']); $pos = strpos($os,'(win32'); if ($pos === true) {
 ini_set('sendmail_from',$recipient); };
$boundary1="nextpart_001_" . md5(time()); $boundary2="nextpart_002_" . md5(time());
 $subject=str_replace("\r\n"," - ",$_POST["subject"]); $from=str_replace("\r\n"," - ",$_POST["from"]);
 $successpage=$_POST["successpage__"]; $errorpage=$_POST["errorpage__"];
 $template=strip_tags(base64_decode($_POST["template__"]),"<br><b><i><u>");
 if ($successpage=="") $successpage = $default_success_page; if ($errorpage=="") $errorpage = $default_error_page;
 if ($subject=="") $subject = "Web Site Form ($from)"; if (strpos($from,'@')===false) $from = "webform@" . $domain;
 $alphatest = "Alphabet Test : abcde åßçdé αβψδε фисву";
 $scriptby = "Message created using Stormdance Antenna Web Design Studio, Web Site Form Mail Script ©2006-2010";
 $headers = "From: $from\r\n"; $headers .= "MIME-Version: 1.0\r\n";
 $headers .= "Content-Type: multipart/mixed;\n boundary=\"{$boundary1}\"\r\n"; $bound1= "\r\n--$boundary1\n";
 $bound2= "\r\n--$boundary2\n"; $bound1close= "\r\n--$boundary1--\n"; $bound2close= "\r\n--$boundary2--\n";
 $ptext = "This is a MIME format multi-part message.\n\n"; $ptext .= $bound1;
 $ptext .= "Content-Type: multipart/alternative;\n boundary=\"{$boundary2}\"\r\n"; $ptext .= $bound2;
 $ptext .= "Content-Type: text/plain; charset=\"utf-8\"\nContent-Transfer-Encoding: 7bit\n\n"; $text = "";
 if ($subject == "test") $text .= $alphatest; if ($template <> "") { $template = str_replace("<br>","\r\n",$template);
 $templatetext = strip_tags($template); foreach( $_POST as $key => $value){ $key = "[" . filter_tags($key) . "]";
 $value = filter_tags($value); $templatetext = str_replace($key,$value,$templatetext);
 $templatetext = str_replace(underscore_to_space($key),$value,$templatetext); } $text .= $templatetext; } else {
 $text = "form address :\r\n$referrer\r\n\r\n"; foreach( $_POST as $key => $value){ $key = filter_tags($key);
 $value = filter_tags($value); $pos = strpos($key,'__'); if ($pos === false) $text .= $key . " :\r\n$value\r\n\r\n"; } }
 $text .= "\r\n\r\n$scriptby\r\n"; $htext = $bound2;
 $htext .= "Content-Type: text/html; charset=\"utf-8\"\nContent-Transfer-Encoding: 7bit\n\n"; $htext .= "<html><head>
 <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /><title>$subject</title>
 <meta name=\"generator\" content=\"Antenna Web Design Studio by Stormdance\"></head>
 <body style=\"font-family:Verdana, Arial, Helvetica, sans-serif; font-size:10px\">
 <font face=\"Verdana, Arial, Helvetica, sans-serif\"><font size=\"2\">";
 if ($subject == "test") $htext .= $alphatest . "<br><br>"; if ($template <> "") {
 $template = str_replace("\r\n","\r\n<br>",$template); foreach($_POST as $key => $value){
 $key = "[" . tag_to_entity(filter_tags($key)) . "]"; $value = tag_to_entity(filter_tags($value));
 $value = str_replace("\r\n","\r\n<br>",$value); if ($key == "from") $value = "<a href=\"mailto:$value\">$value</a>";
 $template = str_replace($key,$value,$template); $template = str_replace(underscore_to_space($key),$value,$template); }
 $htext .= $template . "<br>"; } else { $htext .= "<font color=\"blue\">form address :</font><br>\n$referrer<br><br>\n";
 foreach($_POST as $key => $value){ $key = tag_to_entity(filter_tags($key)); $value = tag_to_entity(filter_tags($value));
 $value = str_replace("\r\n","\r\n<br>",$value); if ($key == "from") $value = "<a href=\"mailto:$value\">$value</a>";
 $pos = strpos($key,'__'); if ($pos === false) { $key=underscore_to_space($key);
 $htext .= "<font color=\"blue\">$key :</font><br>\n$value<br><br>\n"; } } }
 $htmltail = "</font><br><br><font size=\"1\">$scriptby</font></font></body></html>"; $filetext = $bound2close;
 $fileerror = "\n<br>Error, file not attached :"; if (($file_attachment_max_kbytes<>"0") && (count($_FILES)>0)) {
 $count = "<br>none."; $htext .= "<font color=\"blue\">attached files : </font>"; foreach($_FILES as $afile){
 $tmp_name = $afile['tmp_name']; $type = $afile['type']; $name = $afile['name']; $size = $afile['size']; if ($tmp_name<>"") {
 if (file_exists($tmp_name)) { if ($size<=$file_attachment_max_kbytes*1024) { if(is_uploaded_file($tmp_name)) {
 $file = fopen($tmp_name,'rb'); $data = fread($file,filesize($tmp_name)); fclose($file);
 $data = chunk_split(base64_encode($data)); $filetext .= $bound1 . "Content-Type: {$type};\n name=\"{$name}\"\n" .
 "Content-Disposition: attachment;\n filename=\"{$name}\"\n" ."Content-Transfer-Encoding: base64\n\n$data\n\n";
 $htext .= "<br> - " . $name; $count = ""; } else {$htext .= "$fileerror $name exists but was not an uploaded file.";} }
 else {$htext .= "$fileerror $name is too big (file size:$size; max permitted:$file_attachment_max_bytes).";} }
 else {$htext .= "$fileerror $name does not exist (was not uploaded successfully).";} } else {$htext .= $count;} } }
 $filetext .= $bound1close; $recipient = filter_tags($recipient); if (strpos($recipient,'@')===false) exit;
 $subject = filter_tags($subject); echo $txt_endmask; echo "Host Software: $os";
 echo "<br><br><b>FreeForm</b> is running in <b>Test Mode Only</b> - your form has <b>not</b> been sent.<br>";
 echo "(To disable Test Mode open freeform.php in Antenna, then republish)";
 echo "<br><br><hr><b>Test Mode Report</b><br><br><pre>"; echo "Recipient: $recipient"; echo "\r\n"; echo "Subject: $subject";
 echo "\r\n"; echo "From: $from"; echo "\r\n"; echo "Success Page: $successpage"; echo "\r\n"; echo "Error Page: $errorpage";
 echo "\r\n"; echo "Text: \r\n\r\n$text"; echo "</pre><hr>"; echo "<b>Tips</b><br><br>";
 echo "<ul><li>If you add a field named 'subject' to your form, then this will be used as the email's Subject: text.  If you set the subject field to 'test' then the email you receive will contain a test string.</li>";
 echo "<li>If you add a field named 'from' to your form, then this will be used in the email's From: text.</li>";
 echo "<li>Some hosts require the recipient to be an email account on your domain i.e. someone@" . $domain . "</li>";
 echo "<li>This script requires a webserver supporting PHP 4.3 or later.  If your hosting package does not include PHP 4.3 or later the script will not work!</li></ul><br><br>";
 echo "Disclaimer : Please note that this script is provided 'as is'.  Use at your own risk.  No warranties are given or implied as to the script's fitness for any particular purpose.";
 echo '<br><br><br><input type="button" value=" OK " onclick="history.go(-1)"><br><br><br>'; echo '<'.'!'.'-'.'-'; ?>
// -->
</div></body></html>
