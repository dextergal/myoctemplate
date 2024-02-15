<?php if($active){ ?>
	
	<div id="side-price">
		<div class="list-group-item item-header"><?= $heading_title; ?></div>
		<div class="list-group-item">
			<div class="price-container">
			
				<div class="input-group">
					<!-- <?php if($left_symbol){ ?>
						<label class="input-group-addon padding-m14-left c343434"><?= $left_symbol; ?></label>
					<?php } ?> -->
					<input type="hidden" 
					
					name="price_min" 
					min="<?= $lowest_price; ?>" 
					max="<?= $highest_price; ?>" 
					class="form-control input-number" 
					value="<?= $price_min; ?>" 
					onkeyup="updateSlider();"
					id="price_min"
					/>
					<input type="text" 
					disabled
					name="price_min1" 
					min="<?= $lowest_price; ?>" 
					max="<?= $highest_price; ?>" 
					class="form-control input-number" 
					value="<?= $left_symbol; ?><?= $price_min; ?>" 
					onkeyup="updateSlider();"
					id="price_min1"
					/>
				</div>
				<div class="input-group">
					<!-- <?php if($left_symbol){ ?>
						<label class="input-group-addon padding-m14-left c343434"><?= $left_symbol; ?></label>
					<?php } ?> -->
					
					<input type="hidden" 

					name="price_max" 
					min="<?= $lowest_price; ?>" 
					max="<?= $highest_price; ?>" 
					class="form-control input-number" 
					value="<?= $price_max; ?>"
					onkeyup="updateSlider();"
					id="price_max"
					/>
					<input type="text" 
					disabled
					name="price_max1" 
					min="<?= $lowest_price; ?>" 
					max="<?= $highest_price; ?>" 
					class="form-control input-number" 
					value="<?= $left_symbol; ?><?= $price_max; ?>"
					onkeyup="updateSlider();"
					id="price_max1"
					/>
				</div>
			</div>
		
			<div id="slider-price"></div>
		</div>
		
		<script type='text/javascript' >
			$("#slider-price").slider({
				min: <?= $lowest_price; ?>,
				max: <?= $highest_price; ?>,
				range: true,
				values: [<?= $price_min; ?>, <?= $price_max; ?>],
				create: function (event, ui) {
					$(".ui-slider-handle").attr("onclick", "");
				},
				slide: function () {
					val = $(this).slider("values");

					price_min = val[0].toFixed(2);
					price_max = val[1].toFixed(2);

					$("input[name='price_min']").val(price_min);
					$("input[name='price_max']").val(price_max);
					$("input[name='price_min1']").val('$'+price_min);
					$("input[name='price_max1']").val('$'+price_max);
					
				},
				stop: function (event, ui) {
					val = $(this).slider("values");

					price_min = val[0].toFixed(2);
					price_max = val[1].toFixed(2);

					$("input[name='price_min']").val(price_min);
					$("input[name='price_max']").val(price_max);
					$("input[name='price_min1']").val('$'+price_min);
					$("input[name='price_max1']").val('$'+price_max);

					applyFilter();
				}
			});

			function updateSlider($value){
				$("#slider-price").slider( "values", [$("input[name='price_min']").val(), $("input[name='price_max']").val()]);
			}
		</script>
	</div>
<?php } ?>