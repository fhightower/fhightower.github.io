+++
date = "2019-02-03"
title = "HTML-to-JSON Conversion Library"
description = "When all you have a html-to-json library, everything's an API."
tags = ["JSON", "Programming", "HTML"]
+++

### HTML-to-JSON Library

I have a project [here](https://gitlab.com/fhightower/html-to-json) to convert HTML to JSON. You can find installation instructions here: https://gitlab.com/fhightower/html-to-json#installation.

The library can convert any/all html to json such that this:

```html
<head>
    <title>Floyd Hightower's Projects</title>
    <meta charset="UTF-8">
    <meta name="description" content="Floyd Hightower&#39;s Projects">
    <meta name="keywords" content="projects,fhightower,Floyd,Hightower">
</head>
```

becomes:

```json
{
    "head": [
    {
        "title": [
        {
            "value": "Floyd Hightower\'s Projects"
        }],
        "meta": [
        {
            "attributes":
            {
                "charset": "UTF-8"
            }
        },
        {
            "attributes":
            {
                "name": "description",
                "content": "Floyd Hightower\'s Projects"
            }
        },
        {
            "attributes":
            {
                "name": "keywords",
                "content": "projects,fhightower,Floyd,Hightower"
            }
        }]
    }]
}
```

And you can tell it to only convert html tables in which case it will convert tables and use the table headings as the keys for the resulting json (this is described in depth [here](https://gitlab.com/fhightower/html-to-json#html-tables-to-json)).

### Benefits of HTML-to-JSON Library

What is exciting about this library is that it allows you to treat every website like a JSON API. This means you do not have to use [beautiful soup](https://www.crummy.com/software/BeautifulSoup/) or some other HTML parser and traversal system; you can just work with JSON!

Enjoy the project and please [contact me](https://hightower.space/contact/) if you have any questions or feedback!
