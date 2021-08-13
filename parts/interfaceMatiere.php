<h2>
    <?php echo ("MATIERE : " . $entity->getNom_matiere() . " / code : " . $entity->getCode_matiere()) ?>
</h2>
<div class="d-md-flex-col d-flex flex-col justify-content-around">
    <a tabTarget="profs" class="tabNav active">professeurs</a>
    <a tabTarget="cours" class="tabNav">cours</a>

</div>
<div class="col" class="text-center tab">
    <div tabName="profs" class="tab active">
        <h5>professeurs enseignant</h5>
        <?php
        $profList = $matiereManager->getProfesseurs($entity);
        foreach ($profList as $prof) {
            echo ("<p>" . $prof->getPrenom_professeur() . " " . $prof->getNom_professeur() . "</p>");
        }
        ?>


    </div>
    <div tabName="cours" class="tab">
        <h5>cours liés </h5>
        <p>
            <?php
            $coursList = $matiereManager->getCours($entity);
            foreach ($coursList as $cour) {
                echo ("<p>" . $cour->getNom_cour() . "</p>");
            }
            ?>
        </p>

    </div>
</div>