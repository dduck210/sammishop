<?php if (!empty($categories)):
foreach ($categories as $category):
$category_id = $category["id"];
$category_name = $category["name"];
$category_slug = Helper::getSlug($category_name);
$category_link = "danh-sach-blogs/$category_slug/$category_id"
?>
<li><a href="<?php echo $category_link; ?>"><?php echo $category_name; ?></a></li>

<?php endforeach; else: ?>

<?php endif; ?>
