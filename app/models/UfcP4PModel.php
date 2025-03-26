<?php
class UfcP4PModel
{
    private $db;
    
    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllUfcP4P()
    {
        $sql = "SELECT  P4P.Id 
                       ,P4P.Naam
                       ,P4P.Ranglijstnummer
                       ,P4P.Lengte
                       ,P4P.Gewicht
                       ,P4P.Leeftijd
                       ,P4P.WinstDoorKnockout
                FROM Ufc as P4P
                ORDER BY P4P.Ranglijstnummer ASC";

        $this->db->query($sql);

        return $this->db->resultSet();
    }
}