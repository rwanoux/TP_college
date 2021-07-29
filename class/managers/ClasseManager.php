<?php
namespace managers;

use MainManager;
use managers\MainManager as ManagersMainManager;

class ClasseManager extends ManagersMainManager
{

    public function __construct()
    {
        $this->setTable("classes");
        $this->setAddCol("code_classe,nom_classe,code_prof_ref_classe");
        $this->setAddPreparedValues(":code_classe,:nom_classe,:code_prof_ref_classe");
        $this->setIdColumn("code_classe");

        parent::__construct();
    }
}