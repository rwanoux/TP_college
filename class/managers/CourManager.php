<?php

class courManager extends MainManager
{

    public function __construct($db)
    {
        $this->setTable("cours");
        $this->setAddCol("code_cour,nom_cour,code_matiere_cour");
        $this->setAddPreparedValues(":code_cour,:nom_cour,:code_matiere_cour");
        $this->setIdColumn("code_cour");

        parent::__construct($db);
    }
    public function getClasses(Cour $cour)
    {
        $req = $this->getDb()->query('
        SELECT * FROM asso_prof_classe_cours WHERE code_cours_asso_prof_classe_cours="' . $cour->getCode_cour() . '"
        ');
        $classes = [];

        $dataAsso = $req->fetchAll(PDO::FETCH_ASSOC);
        foreach ($dataAsso as $assoRow) {
            $req = $this->getDb()->query('
            SELECT * FROM classes WHERE code_classe="' . $assoRow["code_classe_asso_prof_classe_cours"] . '"
            ');
            while ($dataClasse = $req->fetch(PDO::FETCH_ASSOC)) {
                $classe = new Classe($dataClasse);
                array_push($classes, $classe);
            }
        }
        return $classes;
    }
    public function getEvals(Cour $cour)
    {
        $req = $this->getDb()->query('
        SELECT * FROM evaluations WHERE code_cour_evaluation="' . $cour->getCode_cour() . '"
        ');
        $evals = [];
        $data = $req->fetchAll(PDO::FETCH_ASSOC);
        foreach ($data as $row) {
            $eval = new Evaluation($row);
            array_push($evals, $eval);
        }
        return $evals;
    }
}