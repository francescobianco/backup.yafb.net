

deploy:
	@git remote remove piku || true
	@git remote add piku piku@piku.lab.tp.it:backup
	@date > tests/version.txt
	@git add .
	@git commit -am "Deploy"
	@git push
	@git push piku main