## Rails PDF generation sample

### Courtesy [wkhtmltopdf](http://code.google.com/p/wkhtmltopdf/) + [wicked_pdf](http://github.com/mileszs/wicked_pdf)

A rails sample app that generates PDFs from html, works on [heroku.com](http://heroku.com) and is so painless it hurts.

Example:  [http://heroku-pdf.heroku.com](http://heroku-pdf.heroku.com)

Install steps:

* `git clone git://github.com/jordan-brough/heroku-pdf.git`
* `cd heroku-pdf`
* `heroku create your-great-app-name --stack bamboo-ree-1.8.7`
* `git push heroku master`
* visit `http://your-great-app-name.heroku.com`

Presto pdf.

### Running locally

The app is setup to use `rails-root/bin/wkhtmltopdf-amd64` in production via [this](http://github.com/jordan-brough/heroku-pdf/blob/master/config/initializers/wicked_pdf.rb#L4)
initializer code.  This setting is overridden in development to look for `/usr/local/bin/wkhtmltopdf` in development mode
(via [this](http://github.com/jordan-brough/heroku-pdf/blob/master/config/environments/development.rb#L19-21)
`after_initialize` block).  If you want to run in development mode and are on an amd64 architecture
you can just delete the `after_initialize` block.  Otherwise, you'll probably want to grab wkhtmltopdf and update
the `after_initialize` path as appropriate.

Currently includes wkhtmltopdf version 0.9.9 static amd64 (works on heroku).