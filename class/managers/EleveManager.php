<?php

class EleveManager extends MainManager
{

    public function __construct($db)
    {
        $this->setTable("eleves");
        $this->setAddCol("nom_eleve,prenom_eleve,date_naissance_eleve,adresse_eleve,telephone_eleve,mail_eleve,code_parrain_eleve,code_classe_eleve");
        $this->setAddPreparedValues(":nom_eleve,:prenom_eleve,:date_naissance_eleve,:adresse_eleve,:telephone_eleve,:mail_eleve,:code_parrain_eleve,:code_classe_eleve");
        $this->setIdColumn("code_eleve");

        parent::__construct($db);
    }
    public function getEvals(Eleve $eleve)
    {

        $req = $this->getDb()->query('
    SELECT * FROM asso_prof_eleve_eval WHERE code_eleve_asso_prof_eleve_eval="' . $eleve->getCode_eleve() . '"
    ');
        $evals = [];
        $dataAsso = $req->fetchAll(PDO::FETCH_ASSOC);
        foreach ($dataAsso as $assoRow) {
            $result = [];

            $req = $this->getDb()->query('
                SELECT * FROM professeurs WHERE code_professeur ="' . $assoRow["code_prof_asso_prof_eleve_eval"] . '"
                ');
            $dataProf = $req->fetch(PDO::FETCH_ASSOC);

            $req = $this->getDb()->query('
                SELECT * FROM evaluations WHERE code_evaluation ="' . $assoRow["code_eval_asso_prof_eleve_eval"] . '"
                ');
            $dataEval = $req->fetch(PDO::FETCH_ASSOC);

            $result["eval"] = new Evaluation($dataEval);
            $result["prof"] = new Professeur($dataProf);
            $result["note"] = $assoRow["note_asso_prof_eleve_eval"];
            array_push($evals, $result);
        }
        return $evals;
    }
}