<?php
class AutoModel
{
    private $db;
    
    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllAutos()
    {
        $sql = "SELECT  AUTO.Id 
                       ,AUTO.Merk
                       ,AUTO.Model
                       ,AUTO.PaardenKracht
                       ,AUTO.Koppel
                       ,AUTO.Prijs
                       ,AUTO.ReleaseDatum
                       ,AUTO.DroomAuto
                FROM koenigsegg as AUTO
                ORDER BY AUTO.DroomAuto DESC, AUTO.ReleaseDatum ASC";

        $this->db->query($sql);

        return $this->db->resultSet();
    }
}