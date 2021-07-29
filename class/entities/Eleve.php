<?php

class Eleve extends CollegeEntity
{
    //---ATTRIBUTS
    private $code_eleve;
    private $nom_eleve;
    private $prenom_eleve;
    private $date_naissance_eleve;
    private $adresse_eleve;
    private $mail_eleve;
    private $telephone_eleve;
    private $code_parrain_eleve;
    private $code_classe_eleve;
    static private $attList =["code", "nom", "prenom", "naissance", "adresse", "mail", "tél", "parrain", "classe"];



    //---CONSTRUCT
    public function __construct(array $data)
    {
        parent::__construct($data);
        $this->setEntityType("eleve");
    }
    public function createTableRow()
    {

        echo("<tr itemId='".$this->getCode_eleve(). "' itemType='".$this->getEntityType()."' class='item-row'>");
        foreach($this as $att=>$value){
            echo ("<td class='item-attribut' itemAttr='".$att."'>".$value."</td>");
        }
        echo"</tr>";
    }

    
    public static function createTableHeader(){
        echo ("<tr class='item-row-header text-center'>");

         foreach(self::$attList as $att){
            echo ("<th class='item-attribut-header' >".$att."</th>");
         }

        echo"</tr>";

    }
    /**
     * Get the value of code_eleve
     */
    public function getCode_eleve()
    {
        return $this->code_eleve;
    }

    /**
     * Set the value of code_eleve
     *
     * @return  self
     */
    public function setCode_eleve($code_eleve)
    {
        $this->code_eleve = $code_eleve;

        return $this;
    }

    /**
     * Get the value of nom_eleve
     */
    public function getNom_eleve()
    {
        return $this->nom_eleve;
    }

    /**
     * Set the value of nom_eleve
     *
     * @return  self
     */
    public function setNom_eleve($nom_eleve)
    {
        $this->nom_eleve = $nom_eleve;

        return $this;
    }

    /**
     * Get the value of prenom_eleve
     */
    public function getPrenom_eleve()
    {
        return $this->prenom_eleve;
    }

    /**
     * Set the value of prenom_eleve
     *
     * @return  self
     */
    public function setPrenom_eleve($prenom_eleve)
    {
        $this->prenom_eleve = $prenom_eleve;

        return $this;
    }

    /**
     * Get the value of date_naissance_eleve
     */
    public function getDate_naissance_eleve()
    {
        return $this->date_naissance_eleve;
    }

    /**
     * Set the value of date_naissance_eleve
     *
     * @return  self
     */
    public function setDate_naissance_eleve($date_naissance_eleve)
    {
        $this->date_naissance_eleve = $date_naissance_eleve;

        return $this;
    }

    /**
     * Get the value of adresse_eleve
     */
    public function getAdresse_eleve()
    {
        return $this->adresse_eleve;
    }

    /**
     * Set the value of adresse_eleve
     *
     * @return  self
     */
    public function setAdresse_eleve($adresse_eleve)
    {
        $this->adresse_eleve = $adresse_eleve;

        return $this;
    }

    /**
     * Get the value of mail_eleve
     */
    public function getMail_eleve()
    {
        return $this->mail_eleve;
    }

    /**
     * Set the value of mail_eleve
     *
     * @return  self
     */
    public function setMail_eleve($mail_eleve)
    {
        $this->mail_eleve = $mail_eleve;

        return $this;
    }

    /**
     * Get the value of telephone_eleve
     */
    public function getTelephone_eleve()
    {
        return $this->telephone_eleve;
    }

    /**
     * Set the value of telephone_eleve
     *
     * @return  self
     */
    public function setTelephone_eleve($telephone_eleve)
    {
        $this->telephone_eleve = $telephone_eleve;

        return $this;
    }

    /**
     * Get the value of code_parrain_eleve
     */
    public function getCode_parrain_eleve()
    {
        return $this->code_parrain_eleve;
    }

    /**
     * Set the value of code_parrain_eleve
     *
     * @return  self
     */
    public function setCode_parrain_eleve($code_parrain_eleve)
    {
        $this->code_parrain_eleve = $code_parrain_eleve;

        return $this;
    }

    /**
     * Get the value of code_classe_eleve
     */
    public function getCode_classe_eleve()
    {
        return $this->code_classe_eleve;
    }

    /**
     * Set the value of code_classe_eleve
     *
     * @return  self
     */
    public function setCode_classe_eleve($code_classe_eleve)
    {
        $this->code_classe_eleve = $code_classe_eleve;

        return $this;
    }
}