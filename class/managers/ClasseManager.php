<?php




class ClasseManager extends MainManager
{

    public function __construct($db)
    {
        $this->setTable("classes");
        $this->setAddCol("code_classe,nom_classe,code_prof_ref_classe");
        $this->setAddPreparedValues(":code_classe,:nom_classe,:code_prof_ref_classe");
        $this->setIdColumn("code_classe");

        parent::__construct($db);
    }
    public function getEleves(Classe $classe)
    {

        $req = $this->getDb()->query('
            SELECT * FROM eleves WHERE code_classe_eleve="' . $classe->getCode_classe() . '"
            ');
        $eleves = [];
        $data = $req->fetchAll(PDO::FETCH_ASSOC);
        foreach ($data as $row) {
            $eleve = new Eleve($row);
            array_push($eleves, $eleve);
        }
        return $eleves;
    }
    public function getCours(Classe $classe)
    {

        $req = $this->getDb()->query('
            SELECT * FROM asso_prof_classe_cours WHERE code_classe_asso_prof_classe_cours="' . $classe->getCode_classe() . '"
            ');
        $cours = [];
        $dataAsso = $req->fetchAll(PDO::FETCH_ASSOC);
        foreach ($dataAsso as $row) {
            $reqCour = $this->getDb()->query("SELECT *FROM cours WHERE code_cour='" . $row["code_cours_asso_prof_classe_cours"] . "'");
            $courList = $reqCour->fetchAll(PDO::FETCH_ASSOC);
            foreach ($courList as $data) {
                $cour = new Cour($data);

                array_push($cours, $cour);
            }
        }
        return $cours;
    }
    public function getProfByCour(Classe $classe, Cour $cour)
    {

        $req = $this->getDb()->query('
            SELECT * FROM asso_prof_classe_cours WHERE code_classe_asso_prof_classe_cours="' . $classe->getCode_classe() . '" AND code_cours_asso_prof_classe_cours ="' . $cour->getCode_cour() . '"');

        $dataAsso = $req->fetch(PDO::FETCH_ASSOC);

        $reqProf = $this->getDb()->query("SELECT *FROM professeurs WHERE code_professeur='" . $dataAsso["code_prof_asso_prof_classe_cours"] . "'");
        $dataProf = $reqProf->fetch(PDO::FETCH_ASSOC);
        $prof = new Professeur($dataProf);
        return $prof;
    }
}