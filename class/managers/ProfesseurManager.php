<?php

class ProfesseurManager extends MainManager
{

    public function __construct($db)
    {
        $this->setTable("professeurs");
        $this->setAddCol("nom_professeur,prenom_professeur,date_naissance_professeur,adresse_professeur,telephone_professeur,mail_professeur,date_entree_professeur");
        $this->setAddPreparedValues(":nom_professeur,:prenom_professeur,:date_naissance_professeur,:adresse_professeur,:telephone_professeur,:mail_professeur,:date_entree_professeur");
        $this->setIdColumn("code_professeur");

        parent::__construct($db);
    }
}