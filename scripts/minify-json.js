"use strict";

var fs = require("fs");

// get source for everything
var source = process.argv[2];
var dest = process.argv[3] || source.replace(/^public/, "optimized");

var sourceJSON = JSON.parse(fs.readFileSync(source).toString());
fs.writeFileSync(dest, JSON.stringify(sourceJSON));
