<?php


class MatiereManager extends MainManager
{

    public function __construct($db)
    {
        $this->setTable("matieres");
        $this->setAddCol("code_matiere,nom_matiere");
        $this->setAddPreparedValues(":code_matiere,:nom_matiere");
        $this->setIdColumn("code_matiere");

        parent::__construct($db);
    }
}