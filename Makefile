serve: responsive_portfolio_assets/external/masonry.pkgd.min.js
	python3 -m http.server

deploy:
	git commit -a && \
	git push && \
	ssh margay \
		'cd ~/www/www.calaldees.uk/ && git pull'

responsive_portfolio_assets/external/masonry.pkgd.min.js:
	cd responsive_portfolio_assets/external/ ; ./get_externals.sh