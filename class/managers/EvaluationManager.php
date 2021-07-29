<?php
namespace managers;
class evaluationManager extends MainManager
{

    public function __construct()
    {
        $this->setTable("evaluations");
        $this->setAddCol("code_evaluation,nom_evaluation,code_cour_evaluation");
        $this->setAddPreparedValues(":code_evaluation,:nom_evaluation,:code_cour_evaluation");
        $this->setIdColumn("code_evaluation");

        parent::__construct();
    }
}