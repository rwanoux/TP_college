<?php
namespace entities;
class matiere extends CollegeEntity
{
    private $code_matiere;
    private $nom_matiere;
    private static  $attList=["code", "nom"];


    //---CONSTRUCT
    public function __construct(array $data)
    {
        parent::__construct($data);
        $this->setEntityType("matiere");
    }


    public function createTableRow()
    {

        echo("<tr itemId='".$this->getCode_matiere()."' class='item-row'>");
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