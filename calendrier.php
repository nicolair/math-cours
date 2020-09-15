<?php
/**
* Calendrier des semaines de colles. Liens vers les parties du programme attach�s � chaque semaine et vers les questions de cours.
*
*
*initialisation du tableau coll :$nbsemaines=30 semaines de colles
* coll[i] contient date sujet et qc (question de cours)
* sujet et qc sont des tableaux
* valable seulement pour les colles de maths :
* ideltsemainedecolle=1967+numerosemaine
*/
$coll = array();


$link = mysql_connect('localhost', 'util_maquisdoc', 'tata')
      or die('Could not connect: ' . mysql_error());
mysql_select_db('maquisdoc',$link) or die('Could not select database');

#lecture des dates des semaines de colles � partir de la table semaine
$sql = 'select * from semaines';
$result_date=mysql_query($sql) or die('<br>�chec :'. mysql_error());

while ($row = mysql_fetch_array($result_date, MYSQL_ASSOC)) {
  #echo "<br>";
  #var_dump($row);
  $numero = $row['numero'];
  $idelt = 1967 + $numero;
  $date = 'du '.$row['debut'].' au '.$row['fin'];
  #recup ds questions de cours qc Question Cours
  $sql = 'select nom from relations, eltsdocs '
        .'where ideltdocparent='.$idelt.' and idtyperel=19 '
        .'and ideltdoc=ideltdocenfant';
  $result_qc=mysql_query($sql) or die('<br>�chec :'. mysql_error());
  $i = 0;
  $tab_qc = array();
  while ($lign = mysql_fetch_array($result_qc, MYSQL_ASSOC)){
    $tab_qc[$i] = $lign['nom'];
    $i++;
  }
  #recup des parties du prgramme sur lesquels porte les colles
  # ps Porte Sur
  $sql = 'select nom from relations, eltsdocs '
        .'where ideltdocenfant='.$idelt.' and idtyperel=20 '
        .'and ideltdoc=ideltdocparent';
  $result_ps=mysql_query($sql) or die('<br>�chec :'. mysql_error());
  $i = 0;
  $tab_ps = array();
  while ($lign = mysql_fetch_array($result_ps, MYSQL_ASSOC)){
    $tab_ps[$i] = $lign['nom'];
    $i++;
  }

  $coll[$numero] = array('date'=>$date,'ps'=>$tab_ps,'qc'=>$tab_qc);
  #echo "<br>";var_dump($coll[$numero]);
  mysql_free_result($result_qc);
}
mysql_free_result($result_date);

?>
<html>
<head>
  <meta http-equiv="CONTENT-TYPE" content="text/html;">
  <title>calendrier</title>
  <link rel="stylesheet" href="textes.css">
</head>
<body>
<h3 align="center">Calendrier pr&eacute;visionnel des programmes de colle
</h3>
<p></p>
<p>Lorsque le programme d'une colle n'est pas pr&eacute;cis&eacute;, il s'agit d'une semaine de r&eacute;vision. On ne doit pas poser de question de cours, les exercices peuvent porter sur tous les programmes pr&eacute;c&eacute;dents. </p>
<?php
$baseurl = 'http://back.maquisdoc.net/data/cours_nicolair/';
#affichage
  echo "<ul>";
  for ($i=1; $i<=30; $i++)
    {
       echo "<li> <a href=\"".$baseurl."S$i.pdf\" target=\"_blank\">
                  Programme colle $i (pdf)</a>: ".
            $coll[$i]["date"].
            "  <small><a href=\"".$baseurl."S$i.tex\"  target=\"_blank\"> source </a></small>";
       echo "<br>Porte sur : ";
       foreach ($coll[$i]['ps'] as $nom){
         echo "$nom ";
       };
       echo "<br>Questions de cours : ";
       foreach ($coll[$i]['qc'] as $nom){
         echo "$nom ";
       };
       echo "</li>";
    };
   echo "</ul>";
?>

</body>
</html>
