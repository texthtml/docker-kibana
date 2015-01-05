# Kibana

Kibana container version 3.1.0 for Docker

## Usage

`docker run -e ES_HOST=elasticsearch.tld -p 80:80 texthtml/kibana`

## Configuration

Kibana default `config.js` can be configured with env vars:

* ES_SCHEME : defaults to http
* ES_HOST : recommended, defaults to `window.location.hostname`
* ES_PORT : defaults to 9200

If you want to provide your own config file, 
If you want to provide your own configuration, just mount it on `/opt/logstash.conf`:

`docker run -v config/kibana.js:/opt/local/kibana/config.js -p 80:80 texthtml/kibana`

`/opt/local/kibana/config.js` is a template file. You can use `$ES_SCHEME`, `$ES_HOST`, `$ES_PORT` or any other env var you want and it will be replaced with its value.
