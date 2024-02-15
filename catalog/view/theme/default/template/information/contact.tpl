<?= $header; ?>
<div class="container">
	<?= $content_top; ?>
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<li><a href="<?= $breadcrumb['href']; ?>"><?= $breadcrumb['text']; ?></a></li>
		<?php } ?>
	</ul>
	<div class="row"><?= $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
			<?php $class = 'col-sm-6'; ?>
			<?php } elseif ($column_left || $column_right) { ?>
			<?php $class = 'col-sm-9'; ?>
			<?php } else { ?>
			<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?= $class; ?>">
			<h2><?= $heading_title; ?></h2>
			<?php if ($locations) { ?>
				<!-- <h3><?= $text_store; ?></h3> -->
				<div class="panel-group hidden" id="accordion">
					<?php foreach ($locations as $index => $location) { ?>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href="#collapse-location<?= $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" >
										<?= $location['name']; ?> <i class="fa fa-caret-down"></i>
									</a>
								</h4>
							</div>
							<div class="panel-collapse collapse" id="collapse-location<?= $location['location_id']; ?>" >
								<div class="panel-body">
									<div class="row">
										    <?php if ($location['geocode'] || $location['google_map']) { ?> 
												<div class="col-sm-12">
													<div data-id="gmap<?= $index; ?>" data-toggle="gmap" class="gmap"
														<?php if($location['google_map']){ ?>
															data-lat="<?= $location['google_map']['lat']; ?>" 
															data-lng="<?= $location['google_map']['lng']; ?>" 
															data-store="<?= $location['google_map']['store']; ?>" 
															data-address="<?= $location['google_map']['address']; ?>" 
														<?php } ?>
													>
													<div id="gmap<?= $index; ?>" ></div>
													</div>
												</div>
											<?php } ?>
										
										<?php if ($location['image']) { ?>
											<div class="col-sm-3"><img src="<?= $location['image']; ?>" alt="<?= $location['name']; ?>" title="<?= $location['name']; ?>" class="img-thumbnail" /></div>
										<?php } ?>
										<div class="col-sm-3"><strong><?= $location['name']; ?></strong><br />
											<address>
												<?= $location['address']; ?>
											</address>
											<?php if ($location['geocode']) { ?>
												<a href="https://maps.google.com/maps?q=<?= urlencode($location['geocode']); ?>&hl=<?= $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?= $button_map; ?></a>
											<?php } ?>
										</div>
										<div class="col-sm-3"> <strong><?= $text_telephone; ?></strong><br>
											<?= $location['telephone']; ?><br />
											<br />
											<?php if ($location['fax']) { ?>
												<strong><?= $text_fax; ?></strong><br>
												<?= $location['fax']; ?>
											<?php } ?>
										</div>
										<div class="col-sm-3">
											<?php if ($location['open']) { ?>
												<strong><?= $text_open; ?></strong><br />
												<?= $location['open']; ?><br />
												<br />
											<?php } ?>
											<?php if ($location['comment']) { ?>
												<strong><?= $text_comment; ?></strong><br />
												<?= $location['comment']; ?>
											<?php } ?>
										</div>
									</div>
								</div>
							</div>
						</div>
					<?php } ?>
				</div>
				
			<?php } ?>
			<div class="map-holder">
				<?= $gmap_iframe; ?>
			</div>
			<div class="row">
				<div class="col-sm-4 store-details">
						<div class="store"><h3><?= $store; ?></h3></div>
						<div class="lists">
							<div class="item"><?= $address; ?></div>
							<br>
							<div class="item"><label>Email:</label> <a href="mailto:<?= $store_email; ?>"><?= $store_email; ?></a></div>
							<div class="item"><label><?= $text_telephone; ?>:</label><a href="tel:<?= $store_telephone; ?>" alt="<?= $store_telephone; ?>" title="<?= $store_telephone; ?>" ><?= $store_telephone; ?></a></div>
							<div class="item">
								<?php if ($fax) { ?>
									<label><?= $text_fax; ?>:</label><a href="fax:<?= $fax; ?>" alt="<?= $fax; ?>" title="<?= $fax; ?>" ><?= $fax; ?></a>
									<?php } ?>
								</div>
							<div class="item">
								<?php if ($open) { ?>
									<strong><?= $text_open; ?></strong><br />
									<?= $open; ?><br />
									<br />
								<?php } ?>
								<?php if ($comment) { ?>
									<strong><?= $text_comment; ?></strong><br />
									<?= $comment; ?>
								<?php } ?>
							</div>
						</div>
				</div>
				<div class="col-sm-8">
				<div class="contact"> 
					<div class="">
						<h3 class="text-left">Celebrate with us</h3>
							<!-- <img class="enquiry-img" src="<?= $enquiry_img;?>" alt="<?= $enquiry_img_text;?>"> -->
							<form id="enquiry-form" name="myform" action="index.php?route=information/contact/enquiry" method="POST">
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<input type="text" name="q_name" placeholder="Name" class="form-control" id="q-name">
											<div class="error_q_name"></div>
										</div>
									</div>
									<div class="col-sm-6">
									<div class="form-group">
											<input type="text" name="q_contact" placeholder="Contact" class="form-control input-number" id="q-contact">
											<div class="error_q_contact"></div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6">
									<div class="form-group">
											<input type="text" name="q_email" placeholder="Email" class="form-control" id="q-email">
											<div class="error_q_email"></div>
										</div>
									</div>
									<div class="col-sm-6">
											<div class="form-group">
												<input type="text" name="q_subject" placeholder="Subject" class="form-control" id="q-location">
												<div class="error_q_subject"></div>
											</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="form-group">
											<textarea class="form-control" rows="5" id="q-message" placeholder="Message" name="q_message"></textarea>
											<div class="error_q_message"></div>
										</div>
									</div>
								</div>
								<div class="row book-pop">
									<div class="col-sm-6 cap">
									<?=$captcha; ?> 
									<div class="error_q_captcha">
										
									</div>
									</div>
									<div class="col-sm-6 button text-right">
									<button id="btn-validate" type="submit" class="btn btn-primary m-top-1">Send</button>
									</div>
								</div>
							</form>
						</div>
					</div> 
				</div>
			</div>
		</div>
	<?= $column_right; ?></div>
	<?= $content_bottom; ?>
</div>
<?= $footer; ?>
