+++
date = "2018-08-15"
title = "A Definitive Guide for Ignoring Sublime Linter Errors"
description = "How to hide errors from Sublime Text linters like pep8, flake8, pydocstyle, and others. Because linter errors are more guidelines than actual rules."
tags = ["Programming", "Sublime Text", "Code Linters"]
+++

I found it very difficult to ignore [sublime linter](http://www.sublimelinter.com/en/stable/) errors in [Sublime Text](https://www.sublimetext.com/), so this guide shows how to ignore these errors easily. If you have feedback, updates, or additions, please [let me know](https://hightower.space/contact/) (or [raise an issue](https://gitlab.com/fhightower/fhightower.gitlab.io/issues)).

### Ignoring Linter Errors

#### Example

To ignore linter errors, open Sublime Text and navigate to *Preferences > Package Settings > SublimeLinter > Settings*. This will open a Sublime Text window with the default sublime linter settings on the left and your user settings on the right. If you decide to make any changes, you'll want to make them in the user settings (on the right). Below is an example of the content from my user settings:

```json
// SublimeLinter Settings - User
{
    "lint_mode": "load_save",
    "linters": {
        "pydocstyle": {
            "ignore": "D100,D101,D102,D103,D104,D105",
        },
        "pep8": {
            "ignore": "E501"
        },
        "flake8": {
            "args": ["--ignore=E501"],
        }
    }
}
```

#### Explanation

Within the `"linters"` key, I have the names of the linters followed by specific settings for each linter. For the `"pydocstyle"` linter, I am telling it to ignore rules `D100` through `D105` which will not show warnings or errors for missing docstrings (the error codes for pydocstyle (formerly known as pep257) are [here](https://pep257.readthedocs.io/en/latest/error_codes.html)). For `"pep8"`, I'm ignoring the 79 character limit (you can see the pep8 error codes [here](https://pep8.readthedocs.io/en/release-1.7.x/intro.html#error-codes)). And I'm doing the same for `"flake8"` because it will show the line-length error as well.

#### Summary

The principle described above should work for other linters as well. Just add the name of the linter and add the settings you would like to use. Please [let me know](https://hightower.space/contact/) if there is another linter you have worked with that you would like to me to add to my examples.

Happy coding!
