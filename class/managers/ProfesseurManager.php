<?php

class ProfesseurManager extends MainManager
{

    public function __construct($db)
    {
        $this->setTable("professeurs");
        $this->setAddCol("nom_professeur,prenom_professeur,date_naissance_professeur,adresse_professeur,telephone_professeur,mail_professeur,date_entree_professeur");
        $this->setAddPreparedValues(":nom_professeur,:prenom_professeur,:date_naissance_professeur,:adresse_professeur,:telephone_professeur,:mail_professeur,:date_entree_professeur");
        $this->setIdColumn("code_professeur");

        parent::__construct($db);
    }





    public function getClassesRef(Professeur $prof)
    {
        $req = $this->getDb()->query('
SELECT * FROM classes WHERE code_prof_ref_classe="' . $prof->getCode_professeur() . '"
');
        $classes = [];
        $dataAsso = $req->fetch(PDO::FETCH_ASSOC);
        while ($dataAsso = $req->fetch(PDO::FETCH_ASSOC)) {
            $classe = new Classe($dataAsso);
            array_push($classes, $classe);
        }
        return $classes;
    }



    public function getMatieresFromProf(Professeur $prof)
    {

        $req = $this->getDb()->query('
SELECT * FROM asso_prof_matiere WHERE code_prof_asso_prof_matiere="' . $prof->getCode_professeur() . '"
');
        $matieres = [];
        $dataAsso = $req->fetchAll(PDO::FETCH_ASSOC);
        foreach ($dataAsso as $assoRow) {

            $req = $this->getDb()->query('
    SELECT * FROM matieres WHERE code_matiere="' . $assoRow["code_matiere_asso_prof_matiere"] . '"
    ');
            while ($dataMat = $req->fetch(PDO::FETCH_ASSOC)) {
                $mat = new Matiere($dataMat);
                array_push($matieres, $mat);
            }
        }
        return $matieres;
    }
}