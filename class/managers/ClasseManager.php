<?php




class ClasseManager extends MainManager
{

    public function __construct($db)
    {
        $this->setTable("classes");
        $this->setAddCol("code_classe,nom_classe,code_prof_ref_classe");
        $this->setAddPreparedValues(":code_classe,:nom_classe,:code_prof_ref_classe");
        $this->setIdColumn("code_classe");

        parent::__construct($db);
    }
}