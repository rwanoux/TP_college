
<h2><?php echo($entity->getPrenom_professeur()." ".$entity->getNom_professeur()." code:".$entity->getCode_professeur())?></h2>
<div class="col-md-3">
    <ul>
        <li>
            <a tabTarget="info">informations</a>
        </li>
        <li>
            <a bTarget="contact">contacts</a>
        </li>
        <li>
            <a bTarget="ens">enseignement</a>
        </li>
    </ul>

</div>
<div class="col-md-9">
    <div tabName="info">
        <h5>nom</h5>
        <p>
            <?php echo($entity->getNom_professeur());?>
        </p>
        <h5>prenom</h5>
        <p>
            <?php echo($entity->getPrenom_professeur());?>
        </p>
        <h5>date naissance</h5>
        <p>
            <?php echo($entity->getDate_naissance_professeur());?>
        </p>
        <h5>age</h5>
        <p>
            <?php echo($entity->getAge_professeur());?>
        </p>
</div>
    <div tabName="info">
        <h5>adresse</h5>
        <p>
            <?php echo($entity->getAdresse_professeur());?>
        </p>
        <h5>mail</h5>
        <p>
            <?php echo($entity->getMail_professeur());?>
        </p>
        <h5>téléphone</h5>
        <p>
            <?php echo($entity->getTelephone_professeur());?>
        </p>
        
</div>
    <div tabName="info">
        <h5>matieres</h5>
        <p>
            <?php foreach(getMatieresFromProf($entity,$mainManager)as $mat){
                echo($mat." ,");
            };?>
        </p>
        <h5>dates entrée en fonction</h5>
        <p>
            <?php echo($entity->getDate_entree_professeur());?>
        </p>
        <h5>référents de</h5>
        <p>
        <?php 
        foreach(getMatieresFromProf($entity,$mainManager)as $mat){
                echo($mat." ,");
            };?>
        </p>
        
</div>
</div>
