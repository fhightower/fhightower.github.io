+++
date = "2018-07-30"
title = "Indicator of Compromise Utility Library"
description = "Helpful functions for working with indicators of compromise."
link = "https://gitlab.com/fhightower/ioc-utility"
image = "img/projects/ioc-utility.png"
tags = ["Indicators of Compromise", "Python", "Threat Intelligence"]
+++

### Documentation

The following functions are currently available:

- `file_get_details(file_path)` Find the file details (md5, sha1, sha256, file size) for the given file.
- `files_get_details(directory_path)` Find the file details (md5, sha1, sha256, file size) for all files in a directory.
- `host_as_punycode(host)` Convert the given host to Punycode (https://en.wikipedia.org/wiki/Punycode).
- `host_as_unicode(host)` Convert a given host to Unicode (https://en.wikipedia.org/wiki/Unicode).
- `ip_detect_type(ip_address)` Return the version number of the given ip address (response will be `4` or `6`).
- `ipv6_compress(ip_v6)` .
- `ipv6_expand(ip_v6)` .
- `ipv6_threatconnect_format(ip_v6)` .
- `url_as_punycode(url)` Convert the host of the URL to Punycode.
- `url_as_unicode(url)` Convert the host of the URL to Unicode.
- `url_base_form(url)` Get the base URL without a path, query strings, or other junk.
- `url_canonical_form(url)` Get the canonical url as described here: https://developers.google.com/safe-browsing/v4/urls-hashing#canonicalization.
- `url_from_google_redirect(url)` Get the url from the google redirect.
- `url_host(url)` Return the host of the given URL.
- `url_simple_form(url)` Return the URL without query strings or fragments.
- `url_without_fragments(url)` Return the URL without any fragments.
- `url_without_query_strings(url)` Return the URL without any query strings.
