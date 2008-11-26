# Slicehost API Scripts

A collection of scripts to help me administer my slice + domains via the slicehost API

## Setup

Make sure to create `config/settings.yml` *(copy config/settings.yml.example)* and replace `YOUR_KEY_HERE` with your slicehost API key. *Which can be found on [this page][api-page]*

[api-page]: https://manage.slicehost.com/api

## Usage

So far there is only the one script--it adds a new domain with various options

	ruby script/setup_dns --help
