<?php

class UserModel extends Model
{
    public function register()
    {
        // Sanitize POST
        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

        $password = md5($post['password']); // quick and easy. better than plaintext. almost.

        if ($post['submit']) {
            // Check for unfilled values
            if ($post['name'] == '' || $post['email'] == '' || $post['password'] == '') {
                Messages::setMsg('Think youre being tricky eh?', 'error');
                return;
            }
            // Insert into database
            $this->query('INSERT INTO users (name, email, password) VALUES(:name, :email, :password)');
            $this->bind(':name', $post['name']);
            $this->bind(':email', $post['email']);
            $this->bind(':password', $password);
            $this->execute();
            // Verify
            if ($this->lastInsertId()) {
                // Redirect
                header('Location: '.ROOT_URL.'/users/login');
            }
        }
        return;
    }

    public function login()
    {
        // Sanitize POST
        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

        $password = md5($post['password']); // quick and easy. better than plaintext. almost.

        if ($post['submit']) {
            // compare user data into database
            $this->query('SELECT * FROM users WHERE email = :email AND password = :password');
            $this->bind(':email', $post['email']);
            $this->bind(':password', $password);
            $this->execute();
            
            // make sure this is a solo database entry
            $row = $this->solo();

            if ($row) {
                $_SESSION['is_logged_in'] = true;
                $_SESSION['user_data'] = array(
                    "id" => $row['id'],
                    "name" => $row['name'],
                    "email" => $row['email']
                );
                header('Location: '.ROOT_URL.'/posts');
            } else {
                Messages::setMsg('Bad login', 'error');
            }
        }
        return;
    }
}
