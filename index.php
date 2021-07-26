<?php
require('vendor/autoload.php');
//import connexion
require('class/managers/connectDataBase.php'); //pdo

//managers class
require('class/managers/MainManager.php');
require('class/managers/ProfesseurManager.php');
$professeurManager = new ProfesseurManager($pdo);
require('class/managers/EleveManager.php');
$eleveManager = new EleveManager($pdo);



//entity class
require('class/CollegeEntity.php');
require('class/Professeur.php');
require('class/Eleve.php');



require_once('parts/header.php');
?>



<!---------MAGIC HERE------------------>

<!--------------------------->
<?php
$eleveTest = new Eleve([
    "nom_eleve" => "poipoi",
    "prenom_eleve" => "zozo",
    "date_naissance_eleve" => "1945-03-16",
    "adresse_eleve" => "3 rue du pochuit, 53256 Vilchouin",
    "mail_eleve" => "burp@uiop.fr",
    "telephone_eleve" => "032154789655"

]);
var_dump($eleveTest);
$eleveManager->add($eleveTest);




?>



<!--------------------------->


<?php
require_once('parts/footer.php');
?>