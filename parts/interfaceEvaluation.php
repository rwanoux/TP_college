<h2>
    <?php echo ("EVALUATION : " . $entity->getNom_evaluation() . " / code : " . $entity->getCode_evaluation()) ?>
</h2>

<div class="col" class="text-center tab">

    <div tabName="cours" class="tab active">
        <h5>sur le cours de </h5>
        <p>
            <?php
            $cour = ($courManager->getById($entity->getCode_cour_evaluation()));
            echo ($cour->getNom_cour());

            ?>
        </p>

    </div>
</div>