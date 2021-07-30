<?php





class Professeur extends CollegeEntity
{
    //---ATTRIBUTS
    private $code_professeur;
    private $nom_professeur;
    private $prenom_professeur;
    private $date_naissance_professeur;
    private $adresse_professeur;
    private $mail_professeur;
    private $telephone_professeur;
    private $date_entree_professeur;
    private static $attList = ["code", "nom", "prenom", "naissance", "adresse", "mail", "tél", "entrée"];



    //---CONSTRUCT
    public function __construct(array $data)
    {
        parent::__construct($data);
        $this->setEntityType("professeur");
       



    }

    //creation d'elementss html
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

        echo ("<tr class='item-row' itemId='" . $this->getCode_professeur() . "' itemType='".$this->getEntityType()."'>");
        foreach ($this as $att => $value) {
            echo ("<td class='item-attribut' itemAttr='" . $att . "'>" . $value . "</td>");
        }
        echo "</tr>";
    }
  
    public function getAge_professeur(){
        $age = intval(date('Y')) - intval(substr($this->date_naissance_professeur,0,4)); 
        if (date('md') < date('md', strtotime($this->date_naissance_professeur))) { 
            return $age - 1; 
        } 
        return $age; 
    }
    /**
     * Get the value of code_professeur
     */
    public function getCode_professeur()
    {
        return $this->code_professeur;
    }

    /**
     * Set the value of code_professeur
     *
     * @return  self
     */
    public function setCode_professeur($code_professeur)
    {
        $this->code_professeur = $code_professeur;

        return $this;
    }

    /**
     * Get the value of nom_professeur
     */
    public function getNom_professeur()
    {
        return $this->nom_professeur;
    }

    /**
     * Set the value of nom_professeur
     *
     * @return  self
     */
    public function setNom_professeur($nom_professeur)
    {
        $this->nom_professeur = $nom_professeur;

        return $this;
    }

    /**
     * Get the value of prenom_professeur
     */
    public function getPrenom_professeur()
    {
        return $this->prenom_professeur;
    }

    /**
     * Set the value of prenom_professeur
     *
     * @return  self
     */
    public function setPrenom_professeur($prenom_professeur)
    {
        $this->prenom_professeur = $prenom_professeur;

        return $this;
    }

    /**
     * Get the value of date_naissance_professeur
     */
    public function getDate_naissance_professeur()
    {
        return $this->date_naissance_professeur;
    }

    /**
     * Set the value of date_naissance_professeur
     *
     * @return  self
     */
    public function setDate_naissance_professeur($date_naissance_professeur)
    {
        $this->date_naissance_professeur = $date_naissance_professeur;

        return $this;
    }

    /**
     * Get the value of adresse_professeur
     */
    public function getAdresse_professeur()
    {
        return $this->adresse_professeur;
    }

    /**
     * Set the value of adresse_professeur
     *
     * @return  self
     */
    public function setAdresse_professeur($adresse_professeur)
    {
        $this->adresse_professeur = $adresse_professeur;

        return $this;
    }

    /**
     * Get the value of mail_professeur
     */
    public function getMail_professeur()
    {
        return $this->mail_professeur;
    }

    /**
     * Set the value of mail_professeur
     *
     * @return  self
     */
    public function setMail_professeur($mail_professeur)
    {
        $this->mail_professeur = $mail_professeur;

        return $this;
    }

    /**
     * Get the value of telephone_professeur
     */
    public function getTelephone_professeur()
    {
        return $this->telephone_professeur;
    }

    /**
     * Set the value of telephone_professeur
     *
     * @return  self
     */
    public function setTelephone_professeur($telephone_professeur)
    {
        $this->telephone_professeur = $telephone_professeur;

        return $this;
    }

    /**
     * Get the value of date_entree_professeur
     */
    public function getDate_entree_professeur()
    {
        return $this->date_entree_professeur;
    }

    /**
     * Set the value of date_entree_professeur
     *
     * @return  self
     */
    public function setDate_entree_professeur($date_entree_professeur)
    {
        $this->date_entree_professeur = $date_entree_professeur;

        return $this;
    }

    /**
     * Get the value of db
     */
    public function getDb()
    {
        return $this->db;
    }

    /**
     * Set the value of db
     *
     * @return  self
     */
    public function setDb($db)
    {
        $this->db = $db;

        return $this;
    }
}
