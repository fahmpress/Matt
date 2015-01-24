<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li><a href="#">Dashboard</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12 text-center page-404">
		<h1>Halaman Kajur</h1>
                <p>Akses anda adalah <b><% out.print((String)session.getAttribute("sessionakses")); %></b></p>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
	$('html').animate({scrollTop: 0},'slow');});
</script>
