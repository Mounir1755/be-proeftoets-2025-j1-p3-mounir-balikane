<?php

class Ufc extends BaseController
{
    private $ufcP4PModel;

    public function __construct()
    {
        $this->ufcP4PModel = $this->model('UfcP4PModel');
    }

    public function index()
    {
        $result = $this->ufcP4PModel->getAllUfcP4P();

        $data = [
            'title' => 'UFC Men\'s Pound-For-Pound Ranking',
            'P4P' => $result
        ];
        
        $this->view('UFCMenP4P/index', $data);
    }

    public function delete($id)
    {
        if ($this->ufcP4PModel->deleteUfcP4P($id)) {
            header('Location: ' . URLROOT . '/ufc');
        } else {
            die('Something went wrong');
        }
    }
}