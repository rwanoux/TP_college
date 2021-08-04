<?php


class MatiereManager extends MainManager
{

    public function __construct($db)
    {
        $this->setTable("matieres");
        $this->setAddCol("code_matiere,nom_matiere");
        $this->setAddPreparedValues(":code_matiere,:nom_matiere");
        $this->setIdColumn("code_matiere");

        parent::__construct($db);
    }
    public function getProfesseurs(Matiere $mat)
    {
        $req = $this->getDb()->query(
            "
        SELECT * FROM asso_prof_matiere
        WHERE code_matiere_asso_prof_matiere ='" . $mat->getCode_matiere() . "'"
        );
        $profs = [];
        $assoRows = $req->fetchAll(PDO::FETCH_ASSOC);
        foreach ($assoRows as $row) {
            $reqProf = $this->getDb()->query("
            SELECT * FROM professeurs
            WHERE code_professeur='" . $row["code_prof_asso_prof_matiere"] . "'
            ");

            $rowProf = $reqProf->fetch(PDO::FETCH_ASSOC);
            $prof = new Professeur($rowProf);
            array_push($profs, $prof);
        }
        return $profs;
    }
    public function getCours(Matiere $mat)
    {
        $req = $this->getDb()->query(
            "
        SELECT * FROM cours
        WHERE code_matiere_cour ='" . $mat->getCode_matiere() . "'"
        );
        $cours = [];
        $rowCour = $req->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rowCour as $row) {

            $cour = new Cour($row);
            array_push($cours, $cour);
        }
        return $cours;
    }
}