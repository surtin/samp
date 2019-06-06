<div class="card text-left">
    <div class="card-body">
        <h4 class="card-title">User Login</h4>
        <p class="card-text">
            <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
                <div class="form-group">
                    <label for="email">E-mail address</label>
                    <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelpId"
                        placeholder="coolperson@gmail.com">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" name="password" id="password"
                        placeholder="Make a good password">
                </div>
                <input name="submit" id="submit" class="btn btn-primary" type="submit" value="Submit" />
            </form>
        </p>
    </div>
</div>