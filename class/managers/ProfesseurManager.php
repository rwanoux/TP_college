<?php
namespace managers;
use managers\MainManager;
use PDO;

class ProfesseurManager extends MainManager
{

    public function __construct()
    {
        $this->setTable("professeurs");
        $this->setAddCol("nom_professeur,prenom_professeur,date_naissance_professeur,adresse_professeur,telephone_professeur,mail_professeur,date_entree_professeur");
        $this->setAddPreparedValues(":nom_professeur,:prenom_professeur,:date_naissance_professeur,:adresse_professeur,:telephone_professeur,:mail_professeur,:date_entree_professeur");
        $this->setIdColumn("code_professeur");

        parent::__construct();
    }
    public function assignMatiere($code_prof, $code_mat)
    {
        $req = $this->getDb()->prepare("
        INSERT INTO asso_prof_matiere (code_prof_asso_prof_matiere, code_matiere_asso_prof_matiere) 
        VALUES (:code_prof, :code_mat)");
        $req->bindValue(":code_prof", $code_prof, PDO::PARAM_INT);
        $req->bindValue(":code_mat", $code_mat, PDO::PARAM_INT);
        $req->execute();
        print_r($req->errorInfo());
    }
    
}
