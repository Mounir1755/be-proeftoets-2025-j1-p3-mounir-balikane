<?php

class Autos extends BaseController
{
    private $autoModel;

    public function __construct()
    {
        $this->autoModel = $this->model('AutoModel');
    }

    public function index()
    {
        $result = $this->autoModel->getAllAutos();

        $data = [
            'title' => 'Autos',
            'autos' => $result
        ];
        
        $this->view('autos/index', $data);
    }

    public function delete() {
        echo 'delete';
    }
}