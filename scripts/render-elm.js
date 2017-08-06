"use strict";

var xmldom = require("xmldom");
var elmStaticHtml = require("elm-static-html-lib").default;
var fs = require("fs");
var path = require("path");
var DOMParser = require("xmldom").DOMParser;

// get source for everything
var source = process.argv[2];
var dest = process.argv[3] || source.replace(/^public/, "optimized");
var sourceJSON = path.join(path.dirname(source), "index.json");

// get content into which we can insert our rendered version
var doc = new DOMParser().parseFromString(fs.readFileSync(source).toString(), "text/html");
var siteEl = doc.getElementById("site");

// render the content in Elm
var content = JSON.parse(fs.readFileSync(sourceJSON));
var opts = { model : content, decoder: "Decoder.decoder", alreadyRun: false };

elmStaticHtml(process.cwd(), "View.view", opts).then(function(rendered) {
    if (rendered.match(/^ERROR/)) {
        console.log("error found in generated HTML: " + rendered);
        process.exit(1);
    }

    // insert the new rendered version into the DOM
    var parsed = new DOMParser().parseFromString(rendered, "text/html");
    siteEl.appendChild(parsed);

    fs.writeFileSync(dest, doc.toString());
}).catch(function() {
    process.exit(1);
})
