	<div id="footer-area">
	
<?php if($mailchimp){ ?>
	<div class="newsletter-section text-center">
		<?= $mailchimp; ?>
	</div>
<?php } ?>

	<footer>
		<div class="container">
			<div class="footer-upper-contet">

				<div class="footer-contact-info">
					<h5><?= $store; ?></h5>
					<p class="m0">
					<?= $text_address; ?>: <?= $address; ?><br/>
					<?= $text_telephone; ?>: <a href="tel:<?= $telephone; ?>" ><?= $telephone; ?></a><br/>
					<?php if($fax){ ?>
						<?= $text_fax; ?>: <a href="fax:<?= $fax; ?>" ><?= $fax; ?></a><br/>
					<?php } ?>
					<?= $text_email; ?>: <a href="mailto:<?= $email; ?>" ><?= $email; ?></a><br/>

					<?php if($social_icons){ ?>
					<div class="footer-social-icons">
						<?php foreach($social_icons as $icon){ ?>
						<a href="<?= $icon['link']; ?>" title="<?= $icon['title']; ?>" alt="
									<?= $icon['title']; ?>" target="_blank">
							<img src="<?= $icon['icon']; ?>" title="<?= $icon['title']; ?>" class="img-responsive" alt="<?= $icon['title']; ?>" />
						</a>
						<?php } ?>
					</div>
					<?php } ?>
					</p>
				</div>

				<?php if ($menu) { ?>
					<?php foreach($menu as $links){ ?>
					<div class="footer-contact-links">
						<h5>
							<?php if($links['href'] != '#'){ ?>
							<?= $links['name']; ?>
							<?php }else{ ?>
							<a href="<?= $links['href']; ?>" 
								<?php if($links['new_tab']){ ?>
									target="_blank"
								<?php } ?>
								>
								<?= $links['name']; ?></a>
							<?php } ?>
						</h5>
						<?php if($links['child']){ ?>
						<ul class="list-unstyled">
							<?php foreach ($links['child'] as $each) { ?>
							<li><a href="<?= $each['href']; ?>"
								<?php if($each['new_tab']){ ?>
									target="_blank"
								<?php } ?>
								
								>
									<?= $each['name']; ?></a></li>
							<?php } ?>
						</ul>
						<?php } ?>
					</div>
					<?php } ?>
				<?php } ?>

			</div>
			
			<hr/>
			<div class="row">
				<div class="col-xs-12 col-sm-6">
					<p><?= $powered; ?></p>
				</div>
				<div class="col-xs-12 col-sm-6 text-sm-right">
					<p><?= $text_fcs; ?></p>
				</div>
			</div>
		</div>
	</footer>
	</div>

<div id="ToTopHover" ></div>
<script>AOS.init({
	once: true
});</script>
<?php 
/* extension bganycombi - Buy Any Get Any Product Combination Pack */
echo $bganycombi_module; 
?>
</body></html>