<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);
require("lists.php");



// ----------------
// fonction utils
// -----------------
function createTel()
{
    $num = "";
    for ($x = 0; $x < 10; $x++) {
        $exp = strval(random_int(0, 9));
        $num = $num . $exp;
        if ($x % 2 != 0 && $x > 0 && $x < 9) {
            $num = $num . "-";
        }
    }
    return $num;
}

function createDate($age, $delta)
{
    $minYear = intval(date("Y")) - $age - $delta;
    $maxYear = intval(date("Y")) - $age + $delta;
    $year = strval(random_int($minYear, $maxYear));
    $month = strval(random_int(1, 12));
    $day = strval(random_int(1, 28));
    return $year . "-" . $month . "-" . $day;
}

function createMail($nom, $prenom, $provider)
{
    $mail = "";
    $model = random_int(0, 5);
    switch ($model) {
        case 0:
            $mail = strtolower($nom) . "-" . strtolower($prenom);
            break;
        case 1:
            $mail = strtolower($nom) . "_" . strtolower($prenom);
            break;
        case 2:
            $mail = strtolower($prenom) . "-" . strtolower($nom);
            break;
        case 3:
            $mail = strtolower($nom) . "-" . strtolower($prenom);
            break;
        case 4:
            $mail = strtolower($nom) . strtolower($prenom);
            break;
        case 5:
            $mail = strtolower($nom) . "." . strtolower($prenom);
            break;
    }
    $mail = $mail . "@" . $provider[array_rand($provider, 1)];
    $rdmFin = random_int(0, 4);
    switch ($rdmFin) {
        case 0:
            $mail = $mail . ".com";
            break;
        case 1:
            $mail = $mail . ".eu";
            break;
        case 2:
            $mail = $mail . ".fr";
            break;
        case 3:
            $mail = $mail . ".biz";
            break;
        case 4:
            $mail = $mail . ".bzh";
            break;
    }


    return $mail;
}


// ---------------
// crea profs
// ---------------
// for ($i = 0; $i < 80; $i++) {
//     $nom = $listNoms[array_rand($listNoms, 1)];
//     $prenom = $listPrenoms[array_rand($listPrenoms, 1)];
//     $addr = $listeVoies[array_rand($listeVoies, 1)];
//     $num = createTel();
//     $mail = createMail($nom, $prenom, $listeMail);
//     $naissance = createDate(40, 20);
//     $entree = createDate(15, 5);



//     echo "<br>----------------------<br>";
//     $professeurTest = new Professeur([
//         "nom_professeur" => $nom,
//         "prenom_professeur" => $prenom,
//         "date_naissance_professeur" => $naissance,
//         "adresse_professeur" => $addr,
//         "mail_professeur" => $mail,
//         "telephone_professeur" => $num,
//         "date_entree_professeur"=>$entree
//     ]);
//     echo($professeurTest->getNom_professeur());
//     $professeurManager->add($professeurTest);
// }
// ---------------
// crea eleves
// ---------------
// $classeList = $classeManager->getAll();
// $allEleves = [];
// $allParain = [];
// $counter=1;
// foreach ($classeList as $classe) {
//     $effectif = random_int(24, 35);
//     for ($i = 0; $i < $effectif; $i++) {

//         $nom = $listNoms[array_rand($listNoms, 1)];
//         $prenom = $listPrenoms[array_rand($listPrenoms, 1)];
//         $addr = $listeVoies[array_rand($listeVoies, 1)];
//         $num = createTel();
//         $mail = createMail($nom, $prenom, $listeMail);
//         $mail = str_replace(array("é","è","ê","ë"),"e", $mail);
//         $naissance = createDate(40, 20);
//         $codeClasse = $classe->getCode_classe();
//         $eleveTest = new Eleve([
//             "nom_eleve" => $nom,
//             "prenom_eleve" => $prenom,
//             "date_naissance_eleve" => $naissance,
//             "adresse_eleve" => $addr,
//             "mail_eleve" => $mail,
//             "telephone_eleve" => $num,
//             "code_classe_eleve" => $codeClasse,
//             "code_eleve" => $counter
//         ]);
//         array_push($allEleves, $eleveTest);
//         $counter++; 
//         $eleveManager->add($eleveTest);
//     }
// }

/*-----------------
assign parrain eleve
 --------------------*/

// $allEleves=$eleveManager->getAll();
// $allParain=[];
// foreach ($eleveManager->getAll() as $eleve) {
//     $parrain= $allEleves[array_rand($allEleves, 1)];
//     echo"<br>";
//     echo"*****parrain//";
//     var_dump($parrain->getCode_eleve());
//     echo"<br>";
//     echo"***********";
//     while (array_search($parrain->getCode_eleve(), $allParain) != false && substr($parrain->getCode_classe_eleve(),0,1)<substr($eleve->getCode_classe_eleve(),0,1)){
//         $parrain = $allEleves[array_rand($allEleves, 1)];
//     } ;
//     array_push($allParain, $parrain->getCode_eleve());
//     $eleve->setCode_parrain_eleve($parrain->getCode_eleve());
//     print_r($eleve);
//     echo ("<br>");
//     $eleveManager->update($eleve, ["code_parrain_eleve"=>$eleve->getCode_parrain_eleve()]);

// }
/*-----------------
créa asso prof matière
 --------------------

$profList = $professeurManager->getAll();
$matiereList = $matiereManager->getAll();

foreach ($profList as $prof) {
    $perct = random_int(1, 100);
    echo ("<br>*********" . $perct . "//" . $prof->getCode_professeur() . "*****************<br>");
    switch (true) {
        case ($perct < 60):
            $mat = [];
            array_push($mat, $matiereList[array_rand($matiereList, 1)]);;
            break;
        case ($perct >= 60 && $perct < 85):
            $mat = [];
            foreach (array_rand($matiereList, 2) as $index) {
                array_push($mat, $matiereList[$index]);
            };
            break;
        case ($perct >= 85):
            $mat = [];
            foreach (array_rand($matiereList, 3) as $index) {
                array_push($mat, $matiereList[$index]);
            };
            break;
    }


    foreach ($mat as $m) {
        echo ("<br>--------------<br>");
        print_r($m);
        echo ("<br>--------------<br>");
        $professeurManager->assignMatiere($prof->getCode_professeur(), $m->getCode_matiere());
    }
}
*/

$courList = $courManager->getAll();


foreach ($courList as $cour) {
  
   $niv= random_int(3, 6);
    $req = $courManager->getDb()->prepare(
    "UPDATE  cours  
    SET niveau_cour='".$niv."' WHERE code_cour='" . $cour->getCode_cour() . "'"
);

//on execute la requete
//$req->execute();
}