<?php

class Evaluation extends CollegeEntity
{

    private $code_evaluation;
    private $nom_evaluation;
    private $code_cour_evaluation;

    //---CONSTRUCT
    public function __construct(array $data)
    {
        parent::__construct($data);
        $this->setEntityType("evaluation");
    }



    /**
     * Get the value of code_evaluation
     */
    public function getCode_evaluation()
    {
        return $this->code_evaluation;
    }

    /**
     * Set the value of code_evaluation
     *
     * @return  self
     */
    public function setCode_evaluation($code_evaluation)
    {
        $this->code_evaluation = $code_evaluation;

        return $this;
    }

    /**
     * Get the value of nom_evaluation
     */
    public function getNom_evaluation()
    {
        return $this->nom_evaluation;
    }

    /**
     * Set the value of nom_evaluation
     *
     * @return  self
     */
    public function setNom_evaluation($nom_evaluation)
    {
        $this->nom_evaluation = $nom_evaluation;

        return $this;
    }

    /**
     * Get the value of code_cour_evaluation
     */
    public function getCode_cour_evaluation()
    {
        return $this->code_cour_evaluation;
    }

    /**
     * Set the value of code_cour_evaluation
     *
     * @return  self
     */
    public function setCode_cour_evaluation($code_cour_evaluation)
    {
        $this->code_cour_evaluation = $code_cour_evaluation;

        return $this;
    }
}