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

function getClassesFromProf(Professeur $prof, MainManager $main){

    $req=$main->getDb()->query('
    SELECT * FROM asso_prof_classe_cours WHERE code_prof_asso_prof_classe_cours="'.$prof->getCode_professeur().'"
    ');
    $classes = [];
    $dataAsso = $req->fetchAll(PDO::FETCH_ASSOC);
    foreach($dataAsso as $assoRow) {
      
        $req=$main->getDb()->query('
        SELECT * FROM classes WHERE code_classe="'.$assoRow["code_classe_asso_prof_classe_cours"].'"
        ');
        while ($dataMat = $req->fetch(PDO::FETCH_ASSOC)) {
            $matNom=$dataMat["nom_matiere"];
            array_push($classes, $matNom);
        }
    }
    return $classes;
    }