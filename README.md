![PoweredBy](https://img.shields.io/badge/Powered%20by-CEA%2FNeuroSpin-blue.svg)
![Build Static Pages](https://github.com/neurospin/gaia/workflows/Build%20Static%20Pages/badge.svg)


# Important links

- repository URL: https://github.com/neurospin/gaia
- site URL: https://neurospin.github.io/gaia

# How to contribute

The easiest way to update the content of the site is to create an issue from
the GitHub interface:

- first, log in to your GitHub account.
- go to the issue page: https://github.com/neurospin/gaia/issues.
- click the "New issue" button.
- fill out the appropriate template.

If you want to contribute more deeply:

- first, log in to your GitHub account.
- fork the repository.
- modify the code and test it locally (see the [Configuration](#configuration)
  and [Local Install](#local-install) sections.
- create a Pull Request to the main repository


# Configuration

You have to customize the following parameters in `_config.yml`:

- title: the name of your team.
- subtitle: the running title.
- email: the contact email.
- short_desc: the title of the banner in the index page.
- long_desc: the content of the banner in the index page.
- expiration_opportunities: the job offers will expire automatically after this number of days.
- expiration_news: the news will expire automatically after this number of days.

You can change the banner image in the index page `images/banner.png` and the logo `images/logo.png`.

Then you will need to fill the collections in `_collections` (only text files).
Please look at the example and use the same keys.

Note: For the research collection, you will have to add a new `research_<CATEGORY>.md` for new categories.

# Test website modification locally

First install pixi : [https://pixi.sh](https://pixi.sh)

Then install the website design environment with the following command:

```
git clone https://github.com/neurospin/gaia
```

Finally the web server can be run from the git source directory with the following command:

```
cd gaia
pixi run gaia-website
```

The first execution will take time to install requirements. The website can be seen using the following URL in a browser : [https://localhost:8080](https://localhost:8080).

To get more options on the web server (for instance changing the port number), one can use:

```
cd gaia
pixi shell
bundle exec jekyll serve --livereload --port 8080
```


For Bibtex conversion:

```
pybtex-convert biblio.bib biblio.yaml
```

# Jekyll

For those unfamiliar with how Jekyll works, check out [https://jekyllrb.com](https://jekyllrb.com/) for all the details.
