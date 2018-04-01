			</div>

		</div>
		<!-- /container -->


		<!-- Bootstrap core JavaScript
			================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="<%=path%>/js/jquery.min.js"></script>
		<script src="<%=path%>/js/bootstrap.min.js"></script>
		<script>
			$(document).ready(function () {
				$('.dropdown-submenu a.test').on("click", function (e) {
					$(this).next('ul').toggle();
					e.stopPropagation();
					e.preventDefault();
				});
			});
		</script>
	</body>

</html>