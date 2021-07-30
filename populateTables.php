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



$classeList = $classeManager->getAll();
$courList=$courManager->getAll();
$main=$mainManager;
foreach ($classeList as $classe) {
   
    $niv=$classe->getNiveau_classe(); 
    foreach($courList as $cour){
       
        if ($cour->getNiveau_cour()===$classe->getNiveau_classe()){
            $matiere=$matiereManager->getById($cour->getCode_matiere_cour());
            $reqProf=$main->getDb()->query("
            SELECT * FROM asso_prof_matiere 
            WHERE code_matiere_asso_prof_matiere='".$matiere->getCode_matiere()."'");
            $profList=$reqProf->fetchAll(PDO::FETCH_ASSOC);
            $profAsso=$profList[array_rand($profList,1)];
            $prof=$professeurManager->getById($profAsso["code_prof_asso_prof_matiere"]);
            

            $req=$main->getDB()->prepare("
            INSERT INTO asso_prof_classe_cours 
            (code_classe_asso_prof_classe_cours, code_cours_asso_prof_classe_cours,code_prof_asso_prof_classe_cours)
            VALUES(:classe,:cour,:prof)
            ");
            $req->bindValue(":classe",intval($classe->getCode_classe()), PDO::PARAM_STR);
            $req->bindValue(":cour",intval($cour->getCode_cour()), PDO::PARAM_STR);
            $req->bindValue(":prof",intval($prof->getCode_professeur()), PDO::PARAM_STR);
            $req->execute();
            print_r($req->errorInfo());

        }
       
    }


$evaList=$evaluationManager->getAll();

foreach($evaList as $eval){

    $codeCour=$eval->getCode_cour_evaluation();
    $codeEval=$eval->getCode_evaluation();

    $cour=$courManager->getById($codeCour);
   
    $reqAsso=$mainManager->getDb()->query("SELECT * FROM asso_prof_classe_cours WHERE code_cours_asso_prof_classe_cours='".$codeCour."'");
    $listAsso=$reqAsso->fetchAll(PDO::FETCH_ASSOC);
    foreach($listAsso as $asso){
        $classe=$classeManager->getById($asso["code_classe_asso_prof_classe_cours"]);
        $prof=$professeurManager->getById($asso["code_prof_asso_prof_classe_cours"]);
        //  echo("***********************<br>");
        //  echo($classe->getNom_classe());
        //  echo("<br>*****************************");
        // echo($cour->getNom_cour());
        //  echo("<br>*****************************");
        // echo($prof->getNom_professeur());
        // echo("<br>");
        
        $listEleve=$eleveManager->getByAttributs(["code_classe_eleve"=>$classe->getCode_classe()]);
        foreach($listEleve as $eleve){
                $note=random_int(0,20);
                $req=$mainManager->getDb()->prepare("
                INSERT INTO asso_prof_eleve_eval (note_asso_prof_eleve_eval,code_prof_asso_prof_eleve_eval,	code_eleve_asso_prof_eleve_eval,code_eval_asso_prof_eleve_eval)
                VALUES (:note, :prof, :eleve, :eval)
                ");
                $req->bindValue(":note",$note, PDO::PARAM_INT);
                    $req->bindValue(":eval",$eval->getCode_evaluation(), PDO::PARAM_INT);
                    $req->bindValue(":prof",$prof->getCode_professeur(), PDO::PARAM_INT);
                    $req->bindValue(":eleve",$eleve->getCode_eleve(), PDO::PARAM_INT);
                $req->execute();
        }

    }

};

*/


    // $req= $courManager->getDb()->query("
    // SELECT * FROM cours
    // WHERE  niveau_cours='".$niv."'") ;
    // $cours=$req->fetchAll(PDO::FETCH_ASSOC);
    // foreach($cours as $cour){
    //     $req2=$mainManager->getDb->query("
    //     SELECT * FROM asso_prof_matiere 
    //     ");

    // }