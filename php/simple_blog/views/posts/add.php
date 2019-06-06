<div class="card text-left">
    <div class="card-body">
        <h4 class="card-title">Add Post</h4>
        <p class="card-text">
            <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
                <div class="form-group">
                    <label for="title">Post Title</label>
                    <input type="text" name="title" id="title" class="form-control" placeholder="Awesome title"
                        aria-describedby="helpId">
                    <small id="helpId" class="text-muted">It puts the title in the bucket...</small>
                </div>
                <div class="form-group">
                    <label for="body">Post Body</label>
                    <textarea class="form-control" name="body" id="body" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label for="link">Link</label>
                    <input type="text" class="form-control" name="link" id="link" aria-describedby="helpId"
                        placeholder="Linky goes here">
                    <small id="helpId" class="form-text text-muted">Link to something neat</small>
                </div>
                <input name="submit" id="submit" class="btn btn-primary" type="submit" value="Submit" />
                <a href="<?php echo ROOT_PATH; ?>/posts" class="btn btn-danger">Cancel</a>
            </form>
        </p>
    </div>
</div>