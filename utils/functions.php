<?php
//include ('./class/managers/MainManager.php');

function getMatieresFromProf(Professeur $prof, MainManager $main){

$req=$main->getDb()->query('
SELECT * FROM asso_prof_matiere WHERE code_prof_asso_prof_matiere="'.$prof->getCode_professeur().'"
');
$matieres = [];
$dataAsso = $req->fetchAll(PDO::FETCH_ASSOC);
foreach($dataAsso as $assoRow) {
  
    $req=$main->getDb()->query('
    SELECT * FROM matieres WHERE code_matiere="'.$assoRow["code_matiere_asso_prof_matiere"].'"
    ');
    while ($dataMat = $req->fetch(PDO::FETCH_ASSOC)) {
        $matNom=$dataMat["nom_matiere"];
        array_push($matieres, $matNom);
    }
}
return $matieres;
}

function getClassesFromProf(Professeur $prof, $man){

   $clList=$man->getByAttributs(["code_prof_ref_classe"=>$prof->getCode_professeur()]);
    
    return $clList;
    }