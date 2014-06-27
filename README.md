# Setup

## Required

	$ heroku create -s cedar
	$ heroku config:add BUILDPACK_URL=http://github.com/kr/heroku-buildpack-inline.git
	$ git push heroku master

## Optional

	$ heroku labs:enable buildpack-env-arg
	$ heroku labs:enable websockets
	$ heroku plugins:install https://github.com/heroku/heroku-repo.git
