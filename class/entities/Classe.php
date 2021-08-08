<?php

class Classe extends CollegeEntity
{
    //---ATTRIBUTS
    private $code_classe;
    private $nom_classe;
    private $code_prof_ref_classe;
    private $niveau_classe;
    static private $attList = ["code", "nom", "prof referent", "niveau"];


    //---CONSTRUCT
    public function __construct(array $data)
    {
        parent::__construct($data);
        $this->setEntityType("classe");
    }


    public static function createTableHeader()
    {

        echo ("<tr class='item-row-header text-center'>");

        foreach (self::$attList as $att) {
            echo ("<th class='item-attribut-header' >" . $att . "</th>");
        }
        echo "</tr>";
    }
    public function createTableRow()
    {

        echo ("<tr class='item-row' itemId='" . $this->getCode_classe() . "' itemType='" . $this->getEntityType() . "'>");
        foreach ($this as $att => $value) {
            echo ("<td class='item-attribut' itemAttr='" . $att . "'>" . $value . "</td>");
        }
        echo "</tr>";
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
     * Get the value of nom_classe
     */
    public function getNiveau_classe()
    {
        return $this->niveau_classe;
    }

    /**
     * Set the value of Niveau_classe
     *
     * @return  self
     */
    public function setNiveau_classe($niveau_classe)
    {
        $this->niveau_classe = $niveau_classe;

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