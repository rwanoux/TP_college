<?php

class Cour extends CollegeEntity
{
    //---ATTRIBUTS
    private $code_cour;
    private $nom_cour;
    private $code_matiere_cour;


    //---CONSTRUCT
    public function __construct(array $data)
    {
        parent::__construct($data);
        $this->setEntityType("cour");
    }

    /**
     * Get the value of code_cour
     */
    public function getCode_cour()
    {
        return $this->code_cour;
    }

    /**
     * Set the value of code_cour
     *
     * @return  self
     */
    public function setCode_cour($code_cour)
    {
        $this->code_cour = $code_cour;

        return $this;
    }

    /**
     * Get the value of nom_cour
     */
    public function getNom_cour()
    {
        return $this->nom_cour;
    }

    /**
     * Set the value of nom_cour
     *
     * @return  self
     */
    public function setNom_cour($nom_cour)
    {
        $this->nom_cour = $nom_cour;

        return $this;
    }


    /**
     * Get the value of code_matiere_cour
     */
    public function getCode_matiere_cour()
    {
        return $this->code_matiere_cour;
    }

    /**
     * Set the value of code_matiere_cour
     *
     * @return  self
     */
    public function setCode_matiere_cour($code_matiere_cour)
    {
        $this->code_matiere_cour = $code_matiere_cour;

        return $this;
    }
}