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



//entity class
require('class/entities/CollegeEntity.php');
require('class/entities/Professeur.php');
require('class/entities/Eleve.php');
require('class/entities/Classe.php');
require('class/entities/Cour.php');
require('class/entities/Evaluation.php');
require('class/entities/Matiere.php');



require_once('parts/header.php');
?>



<!---------MAGIC HERE------------------>
<div class="container">
    <div class="row">


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

                    break;
                case "cour":

                    break;
                case "matiere":

                    break;
            }

        ?>
            <!-- entities table -->
            <div class="col-md-4">
                <table>
                    <?php
                    foreach($entityList as $item){

                    ?>
                    <tr>
                       <?php
                           $item->createTableRow();

                        ?>
                    </tr>
                    <?php
                    }
                    ?>
                </table>
            </div>
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