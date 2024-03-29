<h2><?php echo ("ELEVE : " . $entity->getPrenom_eleve() . " " . $entity->getNom_eleve() . " / code : " . $entity->getCode_eleve()) ?>
</h2>
<div class="d-md-flex-col d-flex flex-col justify-content-around">
    <a tabTarget="info" class="tabNav active">informations</a>
    <a tabTarget="scolaire" class="tabNav">détails scolaires</a>


</div>
<div class="col" class="text-center tab">
    <div tabName="info" class="tab active">
        <h5>nom</h5>
        <p>
            <?php echo ($entity->getNom_eleve()); ?>
        </p>
        <h5>prenom</h5>
        <p>
            <?php echo ($entity->getPrenom_eleve()); ?>
        </p>
        <h5>date naissance</h5>
        <p>
            <?php echo ($entity->getDate_naissance_eleve()); ?>
        </p>
        <h5>adresse</h5>
        <p>
            <?php echo ($entity->getAdresse_eleve()); ?>
        </p>
        <h5>téléphone</h5>
        <p>
            <?php echo ($entity->getTelephone_eleve()); ?>
        </p>
        <h5>mail</h5>
        <p>
            <?php echo ($entity->getMail_eleve()); ?>
        </p>
    </div>
    <div tabName="scolaire" class="tab">
        <h5>est en classe de </h5>
        <p>
            <?php
            $classe = ($classeManager->getById($entity->getCode_classe_eleve()));
            echo ($classe->getNom_classe());

            ?>
        </p>
        <h5>son parrain est </h5>
        <p>
            <?php
            $parrain = $eleveManager->getById($entity->getCode_parrain_eleve());
            echo ($parrain->getNom_eleve() . " " . $parrain->getPrenom_eleve());
            ?>
        </p>
        <h5>ses résultats</h5>
        <div id="calendar"></div>
        <p>
            <?php

            foreach ($eleveManager->getEvals($entity) as $result) {
                $cour = $courManager->getById($result["eval"]->getCode_cour_evaluation());
                echo ("SUJET : " . $cour->getNom_cour() . " / donné par " . $result["prof"]->getNom_professeur() . " " . $result["prof"]->getPrenom_professeur() . "<br>");
                echo ("NOTE : " . $result["note"] . "<br><br>");
            }

            ?>
        </p>

    </div>

</div>