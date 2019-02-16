<?php

class Blog_controller extends CI_Controller {
    function blog()
    {
        $this->load->model('Blog');
        $data['query'] = $this->Blog->get_last_ten_entries();
        $this->load->view('blog', $data);
    }
}

?>