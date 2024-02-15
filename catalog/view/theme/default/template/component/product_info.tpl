<div class="product-gutter">
	<div class="product-block <?= $out_of_stock; ?>">
		<div class="product-image-block relative image-zoom-hover">
			<?php if($sticker && $sticker['name']){ ?>
			<a 
			href="<?= $href; ?>" 
			title="<?= $name; ?>" 
			class="sticker absolute" 
			style="color: <?= $sticker['color']; ?>; background-color: <?= $sticker['background-color']; ?>">
				<?= $sticker['name']; ?>
			</a>
			<?php } ?>
			<?php if($show_special_sticker){ ?>
			<a 
			href="<?= $href; ?>" 
			title="<?= $name; ?>" 
			class="special-sticker absolute" 
			style="top:<?= $sticker ? '30px' : '0px' ?>; color: #fff; background-color: red;">
				<?= $text_sale; ?>
			</a>
			<?php } ?>
			<a 
				href="<?= $href; ?>" 
				title="<?= $name; ?>" 
				class="product-image image-container relative" >

				<img 
					src="<?= $thumb; ?>" 
					alt="<?= $name; ?>" 
					title="<?= $name; ?>"
					class="img-responsive" />

				<?php if($more_options){ ?>
				<div class="more-options-text absolute position-bottom-center">
					<?= $more_options; ?>
				</div>
				<?php } ?>
			</a>
			<div class="btn-group product-button">
				<button
					type="button"
					<?php if($enquiry){ ?>
						onclick="enquiry.add('<?= $product_id; ?>', '<?= $minimum; ?>');"s
					<?php }else{ ?>
						onclick="cart.add('<?= $product_id; ?>', '<?= $minimum; ?>');"
					<?php } ?>
					class="btn btn-default">
					<i class="fa fa-shopping-cart"></i>
				</button>
				<!--
				data-toggle="tooltip"
				<?php if($enquiry){ ?>
					title="<?= $button_enquiry; ?>"
					onclick="enquiry.add('<?= $product_id; ?>', '<?= $minimum; ?>');"s
				<?php }else{ ?>
					title="<?= $button_cart; ?>"
					onclick="cart.add('<?= $product_id; ?>', '<?= $minimum; ?>');"
				<?php } ?>
				-->
				<button 
					type="button" 
					onclick="wishlist.add('<?= $product_id; ?>');" class="btn btn-default">
					<i class="fa fa-heart"></i>
				</button>
				<!--
				data-toggle="tooltip" 
				title="<?= $button_wishlist; ?>" 
				-->
				<button 
					type="button" 
					
					onclick="compare.add('<?= $product_id; ?>');" class="btn btn-default hide">
					<i class="fa fa-exchange"></i>
				</button>
				<!--
				data-toggle="tooltip" 
				title="<?= $button_compare; ?>" 
				-->
			</div>
		</div>
		<div class="product-name">
			<a href="<?= $href; ?>"><?= $name; ?></a>
		</div>

		<?php if($rating) { ?>
		<div class="rating">
			<?php for ($i = 1; $i <= 5; $i++) { ?>
			<?php if ($rating < $i) { ?>
			<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
			<?php } else { ?>
			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
			<?php } ?>
			<?php } ?>
		</div>
		<?php } ?>

		<div class="product-details">
			<?php if ($price && !$enquiry) { ?>
				<div class="price">
					<?php if (!$special) { ?>
						<?= $price; ?>
					<?php } else { ?>
						<span class="price-new"><?= $special; ?></span>
						<span class="price-old"><?= $price; ?></span>
					<?php } ?>
					<?php if ($tax) { ?>
						<span class="price-tax"><?= $text_tax; ?> <?= $tax; ?></span>
					<?php } ?>
				</div>
			<?php } ?>

			<?php if($enquiry){ ?>
			<span class="label label-primary">
				<?= $label_enquiry; ?>
			</span>
			<?php } ?>
		</div>
	</div>
</div>




