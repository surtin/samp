<div>
<?php if (isset($_SESSION['is_logged_in'])) : ?>
<a href="<?php echo ROOT_PATH; ?>/posts/add" class="btn btn-success btn-share">Post something</a>
<?php endif; ?>
<?php foreach ($viewmodel as $item) : ?>
            <div class="card">
                <div class="card-header">
                    <?php echo $item['title']; ?>
                </div>
                <div class="card-body">
                    <h4 class="card-title"><?php echo $item['create_date']; ?></h4>
                    <p class="card-text"><?php echo $item['body']; ?></p>
                </div>
                <div class="card-footer text-muted">
                <a href="<?php echo $item['link']; ?>" target="_blank" class="btn btn-info">Fun Link</a>
                </div>
            </div>
<?php endforeach; ?>
</div>