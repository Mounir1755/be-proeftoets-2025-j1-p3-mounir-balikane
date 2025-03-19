<?php
class SneakersModel
{
    private $db;
    
    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllSneakers()
    {
        $sql = "SELECT  SNKR.Id 
                       ,SNKR.Merk
                       ,SNKR.Model
                FROM Sneakers as SNKR";

        $this->db->query($sql);

        return $this->db->resultSet();
    }
}