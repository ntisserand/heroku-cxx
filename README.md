	$ heroku create -s cedar
	...

	$ heroku config:add BUILDPACK_URL=http://github.com/kr/heroku-buildpack-inline.git
	...

	$ git push heroku master
