<?php
class SmartphonesModel
{
    private $db;
    
    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllSmartphones()
    {
        $sql = "SELECT  SMPH.Merk
                       ,SMPH.Model
                       ,REPLACE(FORMAT(SMPH.Prijs, 0), ',', '.') as Prijs
                       ,SMPH.Geheugen
                       ,SMPH.OS
                       ,SMPH.Schermgrootte
                       ,SMPH.ReleaseDatum
                       ,SMPH.Megapixels as Camera
                FROM smartphones as SMPH
                ORDER BY SMPH.Merk ASC, SMPH.Prijs DESC";

        $this->db->query($sql);

        return $this->db->resultSet();
    }
}