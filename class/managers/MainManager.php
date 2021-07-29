<?php

abstract class  MainManager
{
    //---------ATTRIBUTS-----------------
    private $db; //correspondra à l'instance PDO pour la connexion à la BDD
    private $table; //table cible dans la base de donnée
    private $entity; //type d'objet cible
    private $addCol;
    private $addPreparedValues;
    private $idColumn;

    //----------CONSTRUCT-------------
    public function __construct($db)
    {
        $this->setDb($db);
        $this->setEntity(substr(ucfirst($this->getTable()), 0, -1));
    }


    //-------------------
    //----------ACTIONS
    //-------------------



    public function add($object)
    {

        //on !! PREPARE !! la requete
        $req = $this->db->prepare(
            "INSERT  INTO " . $this->getTable() . "  (" . $this->getAddCol() . ")
             VALUES (" . $this->getAddPreparedValues() . ")"
        );
        //on bind les values 
        foreach ($this->addColToArray() as $key => $value) {
            $method = 'get' . ucfirst($value);
            if (method_exists($object, $method)) {
                switch (gettype($object->$method())) {
                    case "string":
                        $req->bindValue($value, $object->$method(), PDO::PARAM_STR);
                        break;
                    case "integer":
                        $req->bindValue($value, $object->$method(), PDO::PARAM_INT);
                        break;
                    default:
                        $req->bindValue($value, $object->$method());
                        break;
                }
            }
        }
        /*
        echo "<br>----------------------";
        print_r($req);
        echo "<br>----------------------";
        */
        //on execute la requete
        $req->execute();
        print_r($req->errorInfo());
    }


    public function delete($id)
    {
        //on  !!PREPARE !! la requete
        $req = $this->db->prepare(
            "DELETE FROM " . $this->getTable() . "  
            WHERE" . $this->getIdColumn() . "=:id"
        );
        $req->bindValue(":id", $id);

        $req->execute();
    }


    public function getById($id)
    {
        //pas de prepare sur les select
        $req = $this->db->query(
            "SELECT * FROM " . $this->getTable() . " 
            WHERE " . $this->getIdColumn() . " = '" . $id . "'"
        );
        $data = $req->fetch(PDO::FETCH_ASSOC);
        //selon les données l'objet retourné serra de type different

        //récupérer le nom de la class
        $type = $this->getEntity();
        $type = ucfirst($type);
        //si la class existe on en retourne une instance
        if (class_exists($type)) {
            return new $type($data);
        }
    }
    public function getByName($name)
    {
        //pas de prepare sur les select
        $req = $this->db->query(
            "SELECT * FROM " . $this->getTable() . " 
            WHERE nom_" . lcfirst($this->getEntity()) . " = '" . $name . "'"
        );
        $data = $req->fetch(PDO::FETCH_ASSOC);
        //selon les données l'objet retourné serra de type different
        //récupérer le nom de la class
        $type = end(explode('_', array_search($name, $data)));
        $type = ucfirst($type);
        //si la class existe on en retourne une instance
        if (class_exists($type)) {
            return new $type($data);
        }
    }
    public function getByAttributs($attrArray)
    {
        //prepare la string 
        $selectFilter = "";
        foreach ($attrArray as $key => $val) {
            $selectFilter = $selectFilter . $key . " = '" . $val . "' &&";
        }
        $selectFilter = substr($selectFilter, 0, -2);
        //pas de prepare sur les select
        $req = $this->db->query(
            "SELECT * FROM " . $this->getTable() . " 
            WHERE " . $selectFilter
        );
        $entities = [];
        while ($data = $req->fetch(PDO::FETCH_ASSOC)) {
            $class = $this->getEntity();
            $ent = new $class($data);
            array_push($entities, $ent);
        }
        return $entities;
    }

    public function  getAll()
    {
        $req = $this->db->query(
            "SELECT * FROM " . $this->getTable()
        );
        //l'array d'objet retournés
        $entities = [];
        while ($data = $req->fetch(PDO::FETCH_ASSOC)) {
            $class = $this->getEntity();
            $ent = new $class($data);
            array_push($entities, $ent);
        }
        return $entities;
    }


    public function update($object, $data)
    {
        //récupérer la methode getCode spécifique à chaque type d'entity
        $method = 'getCode_' . $this->getEntity();
        //récupérer l'id
        $id = $object->$method();
        //construire la string de l'update
        $updateString = "";
        foreach ($data as $key => $val) {
            $updateString = $updateString . $key . " = '" . $val . "' ,";
        }
        //retirer la dernière ","
        $updateString = substr($updateString, 0, -1);


        //on !! PREPARE !! la requete;
        $req = $this->db->prepare(
            "UPDATE  " . $this->getTable() . "   
            SET " . $updateString .
                "WHERE " . $this->getIdColumn() . "='" . $id . "'"
        );
        var_dump($req);
        //on execute la requete
        $req->execute();
    }

    public function addColToArray()
    {
        return explode(",", $this->getAddCol());
    }
    //----------------------------
    //-----------getters setters
    //----------------------------
    /**
     * Get the value of addCol
     */
    public function getAddCol()
    {
        return $this->addCol;
    }

    /**
     * Set the value of addCol
     *
     * @return  self
     */
    public function setAddCol($addCol)
    {
        $this->addCol = $addCol;

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

    /**
     * Get the value of table
     */
    public function getTable()
    {
        return $this->table;
    }

    /**
     * Set the value of table
     *
     * @return  self
     */
    public function setTable($table)
    {
        $this->table = $table;

        return $this;
    }

    /**
     * Get the value of addPreparedValues
     */
    public function getAddPreparedValues()
    {
        return $this->addPreparedValues;
    }

    /**
     * Set the value of addPreparedValues
     *
     * @return  self
     */
    public function setAddPreparedValues($addPreparedValues)
    {
        $this->addPreparedValues = $addPreparedValues;

        return $this;
    }



    /**
     * Get the value of idColumn
     */
    public function getIdColumn()
    {
        return $this->idColumn;
    }

    /**
     * Set the value of idColumn
     *
     * @return  self
     */
    public function setIdColumn($idColumn)
    {
        $this->idColumn = $idColumn;

        return $this;
    }

    /**
     * Get the value of entity
     */
    public function getEntity()
    {
        return $this->entity;
    }

    /**
     * Set the value of entity
     *
     * @return  self
     */
    public function setEntity($entity)
    {
        $this->entity = $entity;

        return $this;
    }
}