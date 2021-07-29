<?php

class courManager extends MainManager
{

    public function __construct($db)
    {
        $this->setTable("cours");
        $this->setAddCol("code_cour,nom_cour,code_matiere_cour");
        $this->setAddPreparedValues(":code_cour,:nom_cour,:code_matiere_cour");
        $this->setIdColumn("code_cour");

        parent::__construct($db);
    }
}