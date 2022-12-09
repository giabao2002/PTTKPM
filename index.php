<?php
$title = 'Trang chủ';
require_once 'layouts/header.php';
?>
<!--banner strat here-->
<div class="banner">
	<div class="container">
		<div class="banner-main">
			<div class="col-md-6 banner-left">
				<img src="https://printgo.vn/uploads/media/772948/thiet-ke-logo-shop-giay-18_1584095086.jpg" alt="" class="img-responsive">
			</div>
			<div class="col-md-6 banner-right simpleCart_shelfItem">
				<!-- <span class="bann-heart"> </span> -->
				<h2>Sản phẩm giày chính hãng</h2>
				<h1>Hãy thể hiện phong cách của bạn</h1>
				<h2 class="item_price">Sản phẩm bán chạy</h2>
				<ul class="bann-small-img">
					<?php
					$sql_get_list = "SELECT * FROM sanpham";
					if ($db->num_rows($sql_get_list)) {
						foreach ($db->fetch_assoc($sql_get_list) as $key => $sanpham) {
							// mục đích chỉ hiện 2 sản phẩm thôi cho đẹp
							if ($key > 1) break;
							echo
							'
							<li><a href="single.php?theloai=' . $sanpham['TheLoaiId'] . '&sanpham=' . $sanpham['Id'] . '"><img style="width: 80px; " src="' . $sanpham['Anh1'] . '"></a></li>
							';
						}
					}
					?>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--banner end here-->
<!--block-layer2 start here-->
<div class="blc-layer2">
	<div class="container">
		<div class="blc-layer2-main">
			<div class="col-md-6 blc-layer2-left">
				<p>Website bán giày dép với thiết kế đơn giản mà sang trọng phù hợp với các doanh nghiệp đang hoạt động mảng giày dép nam, nữ chính hãng các loại, giày dép thể thao, giày dép công sở, dự tiệc, thời trang</p>
			</div>
			<div class="col-md-6 blc-layer2-right">

			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--block-layer2 end here-->
<!--block-layer1 start here-->
<div class="blc-layer3">
	<div class="container">
		<div class="blc-layer3-main">
			<div class="col-md-4 blc-layer3-grids1">
				<h6>Dịch vụ</h6>
				<h3>GIAO HÀNG NHANH</h3>
				<p>Bạn sẽ nhận được hàng chỉ từ trong vòng 2-3 ngày kể từ lúc hoàn thanh đơn hàng. Nhận ship đến tận giường luôn nha</p>
				<h6>Hỗ trợ</h6>
				<ul>
					<li>
						<h4>ĐỘI NGŨ HỖ TRỢ NHIỆT TÌNH</h4>
						<h5>Có những thắc mắc về sản phẩm, hỗ trợ tư vấn giày. Chúng tớ sẽ hỗ trợ bạn 24/7 </h5>
					</li>
					<li>
						<h4>SẢN PHẨM CHÍNH HÃNG</h4>
						<h5>Kick tự hào sản phẩm chất lượng nhất với giá cả cạnh tranh nhất trên thị trường hàng 2hand hiện nay</h5>
					</li>
				</ul>
			</div>
			<div class="col-md-4 blc-layer3-grids2">
				<?php
				$sql_get_list = "SELECT * FROM sanpham";
				if ($db->num_rows($sql_get_list)) {
					foreach ($db->fetch_assoc($sql_get_list) as $key => $sanpham) {
						if ($key == 2) {
							echo
							'
									<a href="single.php?theloai=' . $sanpham['TheLoaiId'] . '&sanpham=' . $sanpham['Id'] . '"><img src="' . $sanpham['Anh1'] . '"></a>
									';
							break;
						}
					}
				}
				?>
			</div>
			<div class="col-md-4 blc-layer3-grids-3 simpleCart_shelfItem">
				<div class="box-grid">

					<?php
					$sql_get_list = "SELECT * FROM sanpham";
					if ($db->num_rows($sql_get_list)) {
						foreach ($db->fetch_assoc($sql_get_list) as $key => $sanpham) {
							if ($key == 3) {
								echo
								'
										<h3><a href="single.php?theloai=' . $sanpham['TheLoaiId'] . '&sanpham=' . $sanpham['Id'] . '">Sản phẩm mới</a></h3>
					   					<h5>Được cập nhật hằng ngày</h5>
										<a href="single.php?theloai=' . $sanpham['TheLoaiId'] . '&sanpham=' . $sanpham['Id'] . '"><img style="width: 270px;" src="' . $sanpham['Anh1'] . '"></a>
										<div class="box-grid-price">
											<div class="box-grid-price-left">
												<h4>' . $sanpham['Ten'] . '</h4>
											</div>
											<div class="box-grid-price-rit">
												<h4 class="item_price">' . $sanpham['Gia'] . '</h4>
											</div>
											<div class="clearfix"> </div>
										</div>
										';
								break;
							}
						}
					}
					?>

				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--block-layer1 end here-->
<!--home-block start here-->
<div class="home-block">
	<div class="container">
		<div class="home-block-main">
			<?php
			$sql_get_list = "SELECT * FROM sanpham";
			if ($db->num_rows($sql_get_list)) {
				foreach ($db->fetch_assoc($sql_get_list) as $key => $sanpham) {
					if ($key > 3) {
						if ($key == 8) break;
						echo
						'
							<div class="col-md-3 home-grid">
								<div class="home-product-main">
								<div class="home-product-top">
									<a href="single.php?theloai=' . $sanpham['TheLoaiId'] . '&sanpham=' . $sanpham['Id'] . '"><img src="' . $sanpham['Anh1'] . '" alt="" class="img-responsive zoom-img"></a>
								</div>
									<div class="home-product-bottom">
											<h3><a href="single.php?theloai=' . $sanpham['TheLoaiId'] . '&sanpham=' . $sanpham['Id'] . '">' . $sanpham['Ten'] . '</a></h3>
											<p>Khám phá ngay</p>						
									</div>
									<div class="srch">
										<span>' . $sanpham['Gia'] . '</span>
									</div>
								</div>
							</div>
							';
					}
				}
			}
			?>

			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--home block end here-->
<?php
require_once 'layouts/footer.php';
?>