<?php

class Classe extends CollegeEntity
{
    //---ATTRIBUTS
    private $code_classe;
    private $nom_classe;
    private $code_prof_ref_classe;


    //---CONSTRUCT
    public function __construct(array $data)
    {
        parent::__construct($data);
        $this->setEntityType("classe");
    }

    /**
     * Get the value of code_classe
     */
    public function getCode_classe()
    {
        return $this->code_classe;
    }

    /**
     * Set the value of code_classe
     *
     * @return  self
     */
    public function setCode_classe($code_classe)
    {
        $this->code_classe = $code_classe;

        return $this;
    }

    /**
     * Get the value of nom_classe
     */
    public function getNom_classe()
    {
        return $this->nom_classe;
    }

    /**
     * Set the value of nom_classe
     *
     * @return  self
     */
    public function setNom_classe($nom_classe)
    {
        $this->nom_classe = $nom_classe;

        return $this;
    }

    /**
     * Get the value of code_prof_ref_classe
     */
    public function getCode_prof_ref_classe()
    {
        return $this->code_prof_ref_classe;
    }

    /**
     * Set the value of code_prof_ref_classe
     *
     * @return  self
     */
    public function setCode_prof_ref_classe($code_prof_ref_classe)
    {
        $this->code_prof_ref_classe = $code_prof_ref_classe;

        return $this;
    }
}