<?php
class ZangeresModel
{
    private $db;
    
    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllZangeres()
    {
        $sql = "SELECT   
                        ZNGR.Naam
                       ,ZNGR.Nettowaarde
                       ,ZNGR.Land
                       ,ZNGR.Mobiel
                       ,ZNGR.Leeftijd
                FROM Zangeres as ZNGR";

        $this->db->query($sql);

        return $this->db->resultSet();
    }
}