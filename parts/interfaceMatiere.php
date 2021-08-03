<h2><?php echo ($entity->getNom_matiere() . " code:" . $entity->getCode_matiere()) ?>
</h2>
<div>
    <ul class="d-md-flex-col d-flex flex-col justify-content-around">
        <li>
            <a tabTarget="profs" class="tabNav">professeurs</a>
        </li>
        <li>
            <a tabTarget="cours" class="tabNav">cours</a>
        </li>

    </ul>

</div>
<div class="col" class="text-center tab">
    <div tabName="profs" class="tab active">
        <?php
        $profList = $matiereManager->getProfesseurs($entity);
        foreach ($profList as $prof) {
            echo ("<h5>" . $prof->getPrenom_professeur() . " " . $prof->getNom_professeur() . "</h5>");
        }
        ?>


    </div>
    <div tabName="cours" class="tab">
        <h5>est en classe de </h5>
        <p>
            <?php
            $classe = ($classeManager->getById($entity->getCode_classe_eleve()));
            echo ($classe->getNom_classe());

            ?>
        </p>

    </div>
</div>