<h2>
    <?php echo ($entity->getNom_cour() . "/ code : " . $entity->getCode_cour()) ?>
</h2>
<div>
    <ul class="d-md-flex-col d-flex flex-col justify-content-around">
        <li>
            <a tabTarget="info" class="tabNav">infos générales</a>
        </li>
        <li>
            <a tabTarget="classes" class="tabNav">classes</a>
        </li>
        <li>
            <a tabTarget="evals" class="tabNav">évaluations</a>
        </li>

    </ul>

</div>
<div class="col" class="text-center tab">
    <div tabName="info" class="tab active">
        <?php
        $matiere = $matiereManager->getById($entity->getCode_matiere_cour());
        $niveau = $entity->getNiveau_cour();
        ?>
        <h5>ce cours concerne : </h5>
        <p>
            <?php
            echo ($matiere->getNom_matiere());
            ?>
        </p>
        <h5>pour un niveau : </h5>
        <p>
            <?php
            echo ($niveau);
            ?>
        </p>


    </div>
    <div tabName="classes" class="tab ">
        <h5>les classes suivant ce cour</h5>

        <?php
        foreach ($courManager->getClasses($entity) as $classe) {
            echo ("<p>" . $classe->getNom_classe() . "</p>");
        }
        ?>


    </div>
    <div tabName="evals" class="tab ">
        <h5>les évaluations pour ce cour</h5>

        <?php
        foreach ($courManager->getEvals($entity) as $eval) {
            echo ("<p>" . $eval->getNom_evaluation() . "</p>");
        }
        ?>


    </div>
</div>