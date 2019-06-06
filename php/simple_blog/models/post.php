<?php

class PostModel extends Model
{
    public function index()
    {
        $this->query('SELECT * FROM shares ORDER BY create_date DESC');
        $rows = $this->resultSet();
        return $rows;
    }

    public function add()
    {
        // Sanitize post for anything iffy
        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
        if ($post['submit']) {
            // Check for unfilled values
            if ($post['title'] == '' || $post['body'] == '') {
                Messages::setMsg('Make an actual post!', 'error');
                return;
            }

            // insert into mysql
            $this->query('INSERT INTO shares (title, body, link, user_id) VALUES(:title, :body, :link, :user_id)');
            $this->bind(':title', $post['title']);
            $this->bind(':body', $post['body']);
            $this->bind(':link', $post['link']);
            $this->bind(':user_id', 1);
            $this->execute();
            // verifcation step
            if ($this->lastInsertId()) {
                // redirection
                header('Location: ' .ROOT_URL. '/posts');
            }
        }
        return;
    }
}
