<?php

class matiere extends CollegeEntity
{
    private $code_matiere;
    private $nom_matiere;


    //---CONSTRUCT
    public function __construct(array $data)
    {
        parent::__construct($data);
        $this->setEntityType("matiere");
    }

    /**
     * Get the value of code_matiere
     */
    public function getCode_matiere()
    {
        return $this->code_matiere;
    }

    /**
     * Set the value of code_matiere
     *
     * @return  self
     */
    public function setCode_matiere($code_matiere)
    {
        $this->code_matiere = $code_matiere;

        return $this;
    }

    /**
     * Get the value of nom_matiere
     */
    public function getNom_matiere()
    {
        return $this->nom_matiere;
    }

    /**
     * Set the value of nom_matiere
     *
     * @return  self
     */
    public function setNom_matiere($nom_matiere)
    {
        $this->nom_matiere = $nom_matiere;

        return $this;
    }
}