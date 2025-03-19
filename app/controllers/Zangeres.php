<?php

class Zangeres extends BaseController
{
    private $ZangeresModel;

    public function __construct()
    {
        $this->ZangeresModel = $this->model('ZangeresModel');
    }

    public function index()
    {
        $result = $this->ZangeresModel->getAllZangeres();

        $data = [
            'title' => 'Zangeres',
            'Zangeres' => $result
        ];
        
        $this->view('Zangeres/index', $data);
    }

    public function delete() {
        echo 'delete';
    }
}