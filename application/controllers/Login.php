<?php
    class Login extends CI_Controller{
        public function view($page = 'login'){
            if(!file_exists(APPPATH.'views/login/'.$page.'.php')){
                show_404();
            }
            
            $data['title'] = ucfirst($page);
            $this->load->view('templates/header');
            $this->load->view('login/'.$page, $data);
            $this->load->view('templates/footer');
        }

        public function logout($page = 'logout'){
            if(!file_exists(APPPATH.'views/login/'.$page.'.php')){
                show_404();
            }
            
            $data['title'] = ucfirst($page);
            $this->load->view('templates/header');
            $this->load->view('login/'.$page, $data);
            $this->load->view('templates/footer');
        }

        public function signup($page = 'signup'){
            if(!file_exists(APPPATH.'views/login/'.$page.'.php')){
                show_404();
            }

            $this->form_validation->set_rules('name', 'Name', 'required');
            $this->form_validation->set_rules('username', 'User name', 'required');
            $this->form_validation->set_rules('contact', 'Contact', 'required');
            $this->form_validation->set_rules('email', 'Email', 'required');
            $this->form_validation->set_rules('password', 'Password', 'required');
            
            if($this->form_validation->run() === FALSE){
            
                $data['title'] = ucfirst($page);
                $this->load->view('templates/header');
                $this->load->view('login/'.$page, $data);
                $this->load->view('templates/footer');
            }
            else {
                $this->login_model->create_user();
                redirect('posts');
            }
        }
    }