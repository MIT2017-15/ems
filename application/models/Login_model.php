<?php
    class Login_model extends CI_Model {
        public function __construct() {
            $this->load->database();
        }

            public function create_user(){
                // $slug = url_title($this->input->post('username'));

                $data = array(
                    'name' => $this->input->post('name'),
                    'username' => $this->input->post('username'),
                    'contact' => $this->input->post('contact'),
                    'email' => $this->input->post('email'),
                    'password' => $this->input->post('password')
                );

                // $data = array(
                //     'name' => 'Sasanga',
                //     'username' => 'sasanga',
                //     'contact' => '0770406395',
                //     'email' => 'madhumaledirisinghe@gmail.com',
                //     'password' => 'qazwsx@123'
                // );

                return $this->db->insert('user', $data);
            }
            
        }