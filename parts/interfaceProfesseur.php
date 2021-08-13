<h2 class="text-center">
    <?php echo ("PROFESSEUR : " . $entity->getPrenom_professeur() . " " . $entity->getNom_professeur() . " / code : " . $entity->getCode_professeur()) ?>
</h2>
<div class="d-md-flex-col d-flex flex-col justify-content-around">
    <a tabTarget="info" class="tabNav active">informations</a>
    <a tabTarget="contact" class="tabNav">contacts</a>
    <a tabTarget="ens" class="tabNav">enseignement</a>

</div>
<div class="col" class="text-center tab">
    <div tabName="info" class="tab active">
        <h5>nom</h5>
        <p>
            <?php echo ($entity->getNom_professeur()); ?>
        </p>
        <h5>prenom</h5>
        <p>
            <?php echo ($entity->getPrenom_professeur()); ?>
        </p>
        <h5>date naissance</h5>
        <p>
            <?php echo ($entity->getDate_naissance_professeur()); ?>
        </p>
        <h5>age</h5>
        <p>
            <?php echo ($entity->getAge_professeur()); ?>
        </p>
    </div>
    <div tabName="contact" class="tab">
        <h5>adresse</h5>
        <p>
            <?php echo ($entity->getAdresse_professeur()); ?>
        </p>
        <h5>mail</h5>
        <p>
            <?php echo ($entity->getMail_professeur()); ?>
        </p>
        <h5>téléphone</h5>
        <p>
            <?php echo ($entity->getTelephone_professeur()); ?>
        </p>

    </div>
    <div tabName="ens" class="tab">
        <h5>matieres</h5>
        <p>
            <?php foreach ($professeurManager->getMatieresFromProf($entity) as $mat) {
                echo ($mat->getNom_matiere() . " ,");
            }; ?>
        </p>
        <h5>dates entrée en fonction</h5>
        <p>
            <?php echo ($entity->getDate_entree_professeur()); ?>
        </p>
        <h5>référents de</h5>
        <p>
            <?php
            foreach ($professeurManager->getClassesRef($entity) as $cl) {
                echo ($cl->getNom_classe() . " ,");
            }; ?>
        </p>

    </div>
</div>