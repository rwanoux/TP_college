<?php
//include ('./class/managers/MainManager.php');

function getMatieresFromProf(Professeur $prof, MainManager $main){
$req=$main->getDb()->query('
SELECT * FROM asso_prof_matiere WHERE code_prof_asso_prof_matiere="'.$prof->getCode_professeur().'"
');
$matieres = [];
while ($dataAsso = $req->fetch(PDO::FETCH_ASSOC)) {
    $req=$main->getDb()->query('
    SELECT * FROM matieres WHERE code_matiere="'.$dataAsso["code_matiere_asso_prof_matiere"].'"
    ');
    while ($dataMat = $req->fetch(PDO::FETCH_ASSOC)) {
        $matNom=$dataMat["nom_matiere"];
    array_push($matieres, $matNom);
    }
}
return $matieres;
}