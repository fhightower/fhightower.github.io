+++
date = "2016-07-02"
title = "Page Monitor"
description = "A simple webpage monitor that sends an email if website's content changes."
link = "https://gitlab.com/fhightower/page-monitor"
image = "img/projects/page-monitor.png"
tags = ["Idyll", "Python"]
+++

<div id="idyll-mount"><div data-reactroot=""><div class="idyll-root"><div style="max-width:600px;margin-top:0;margin-right:0;margin-bottom:0;margin-left:50px" class=" idyll-text-container"><p><em>What we see depends mainly on what we look for.</em><em>- John Lubbock</em></p><h2>Algorithm</h2><p>The algorithm for this project is:</p><h3>1. Request a site:</h3><p>
Enter a URL: <input type="text" value="https://hightower.space/projects/"/><button>Request URL</button></p><h3>2. Get the hash of the site:</h3><span>d41d8cd98f00b204e9800998ecf8427e</span><h3>3. Check the hash against the existing data:</h3><p>Let’s pretend the previous hash of the content at <span>https://hightower.space/projects/</span> was:</p><span>abcdef198f00b204e9800998ecf8427e</span><h3>4. Take Action</h3><p>If the new hash of the URL content is different, an alert will be sent to the email address passed into the script and the new hash will be recorded. In our example, the new hash (<span>d41d8cd98f00b204e9800998ecf8427e</span>) is different from the old hash (<span>abcdef198f00b204e9800998ecf8427e</span>) so an alert would be sent.</p><p>If the hash of a URL’s content is the same as it was the last time the script was run, nothing will be updated.</p><h2>Usage</h2><pre><code>usage: page_monitor.py [-h] email_address email_account_password

Monitor a webpage for changes to its content and send alerts if there are any
changes.

positional arguments:

  - email_address  an email address from which I can send updates if a
                        webpage changes

  - email_account_password  the password for the email address so that I can send notifications if a webpage changes

optional arguments:
  
  - -h, --help  show this help message and exit</code></pre></div></div></div></div>
    <script src="../page-monitor.js"></script>
