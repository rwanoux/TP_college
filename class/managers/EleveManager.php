<?php

class EleveManager extends MainManager
{

    public function __construct($db)
    {
        $this->setTable("eleves");
        $this->setAddCol("nom_eleve,prenom_eleve,date_naissance_eleve,adresse_eleve,telephone_eleve,mail_eleve,code_parrain_eleve,code_classe_eleve");
        $this->setAddPreparedValues(":nom_eleve,:prenom_eleve,:date_naissance_eleve,:adresse_eleve,:telephone_eleve,:mail_eleve,:code_parrain_eleve,:code_classe_eleve");
        $this->setIdColumn("code_eleve");

        parent::__construct($db);
    }
}