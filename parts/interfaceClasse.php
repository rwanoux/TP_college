<h2>
    <?php echo ("CLASSE : " . $entity->getNom_classe() . "/ code : " . $entity->getCode_classe()) ?>
</h2>
<div>
    <ul class="d-md-flex-col d-flex flex-col justify-content-around">
        <li>
            <a tabTarget="info" class="tabNav">infos générales</a>
        </li>
        <li>
            <a tabTarget="eff" class="tabNav">effectif</a>
        </li>
        <li>
            <a tabTarget="cours" class="tabNav">cours suivis</a>
        </li>


    </ul>

</div>
<div class="col" class="text-center tab">
    <div tabName="info" class="tab active">
        <?php
        $prof = $professeurManager->getById($entity->getCode_prof_ref_classe());
        ?>
        <h5>niveau de classe : </h5>
        <p>
            <?php
            echo ($entity->getNiveau_classe());
            ?>
        </p>
        <h5>professeur referent : </h5>
        <p>
            <?php
            echo ($prof->getPrenom_professeur() . " " . $prof->getNom_professeur());
            ?>
        </p>


    </div>
    <div tabName="eff" class="tab ">
        <h5>Effectif d'eleves</h5>
        <?php
        foreach ($classeManager->getEleves($entity) as $eleve) {
            echo ("<p>" . $eleve->getPrenom_eleve() . " " . $eleve->getNom_eleve() . "</p>");
        }
        ?>
    </div>
    <div tabName="cours" class="tab ">
        <h5>cours </h5>
        <?php
        foreach ($classeManager->getCours($entity) as $cour) {
            $prof = $classeManager->getProfByCour($entity, $cour);

            echo ("<p>" . $cour->getNom_cour() . " dispensé par : " . $prof->getPrenom_professeur() . " " . $prof->getNom_professeur() . "</p>");
        }
        ?>

    </div>

</div>