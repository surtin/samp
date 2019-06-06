<div class="card text-left">
    <div class="card-body">
        <h4 class="card-title">User Registration</h4>
        <p class="card-text">
            <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" name="name" id="name" class="form-control" placeholder="Your desired username"
                        aria-describedby="helpId">
                    <small id="helpId" class="text-muted">Its what we use to identify ourselves..</small>
                </div>
                <div class="form-group">
                  <label for="email">E-mail address</label>
                  <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelpId" placeholder="coolperson@gmail.com">
                  <small id="emailHelpId" class="form-text text-muted">So you can get spammed... er reset your password. Its what you use to login with.</small>
                </div>
                <div class="form-group">
                  <label for="password">Password</label>
                  <input type="password" class="form-control" name="password" id="password" placeholder="Make a good password">
                </div>
                
                <input name="submit" id="submit" class="btn btn-primary" type="submit" value="Submit" />
                <a href="<?php echo ROOT_PATH; ?>/posts" class="btn btn-danger">Cancel</a>
            </form>
        </p>
    </div>
</div>