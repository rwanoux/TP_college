<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);
require('vendor/autoload.php');
//import connexion
require('class/managers/connectDataBase.php'); //pdo

//managers class
require('class/managers/MainManager.php');
require('class/managers/ProfesseurManager.php');
$professeurManager = new ProfesseurManager($pdo);
require('class/managers/EleveManager.php');
$eleveManager = new EleveManager($pdo);
require('class/managers/ClasseManager.php');
$classeManager = new ClasseManager($pdo);
require('class/managers/EvaluationManager.php');
$evaluationManager = new EvaluationManager($pdo);
require('class/managers/CourManager.php');
$courManager = new CourManager($pdo);
require('class/managers/matiereManager.php');
$matiereManager = new MatiereManager($pdo);



//entity class
require('class/CollegeEntity.php');
require('class/Professeur.php');
require('class/Eleve.php');
require('class/Classe.php');
require('class/Evaluation.php');
require('class/Cour.php');
require('class/Matiere.php');



require_once('parts/header.php');
?>



<!---------MAGIC HERE------------------>
<div class="container">
    <div class="row">
        <?php if (isset($_GET["entity"])) { ?>
            <form class="d-flex text-light m-3">
                <h3 class="mx-3">filtre</h3>
            
                <input class="form-control me-2" id="researchInput" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-secondary mx-3" id ="resetFilter">vider le filtre</button>
            </form>
        <?php } ?>


        <?php
        $entityList = [];
        //----------uncomment for populate
        //include('populateTables.php');


        // switch on entity type
        if (isset($_GET["entity"])) {

            switch ($_GET["entity"]) {
                case "professeur":
                    $entityList = $professeurManager->getAll();
                    break;
                case "eleve":
                    $entityList = $eleveManager->getAll();
                    break;
                case "classe":
                    $entityList = $classeManager->getAll();
                    break;
                case "evaluation":
                    $entityList = $evaluationManager->getAll();

                    break;
                case "cour":
                    $entityList = $courManager->getAll();

                    break;
                case "matiere":
                    $entityList = $matiereManager->getAll();

                    break;
            }

        ?>
            <!-- entities table -->
            <table id="entitiesTable">

                <?php
                ucfirst($_GET["entity"])::createTableHeader();
                foreach ($entityList as $item) {
                    $item->createTableRow();
                }
                ?>
            </table>
        <?php
        } else {
        }

        ?>

    </div>
</div>
<!--------------------------->



<?php
require_once('parts/footer.php');
?>