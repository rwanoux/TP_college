<?php


abstract class CollegeEntity
{
    //----ATTRIBUTS
    private $entityType;


    //---CONSTRUCT
    public function __construct(array $data)
    {
        $this->hydrate($data);
    }


    //--HYDRATE FROM ARRAY
    public function hydrate(array $data)
    {
        foreach ($data as $key => $value) {
            $method = 'set' . ucfirst($key);
            if (method_exists($this, $method)) {
                $this->$method($value);
            }
        }
    }
 

    //----GETTERS SETTERS
    /**
     * Get the value of entityType
     */
    public function getEntityType()
    {
        return $this->entityType;
    }

    /**
     * Set the value of entityType
     *
     * @return  self
     */
    public function setEntityType($entityType)
    {
        $this->entityType = $entityType;

        return $this;
    }
}