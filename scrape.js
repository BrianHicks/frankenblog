var fs = require('fs');
var system = require('system');

var server = require('webserver').create();
var service = server.listen(11313, function(request, response) {
    var p = "public" + request.url;
    if (fs.exists(p)) {
        response.statusCode = 200;
        response.write(fs.read(p));
    } else {
        response.statusCode = 404;
    }
    response.close();
});

var page = require('webpage').create();

page.onError = function(msg, trace) {
    var msgStack = ['ERROR: ' + msg];

    if (trace && trace.length) {
        msgStack.push('TRACE:');
        trace.forEach(function(t) {
            msgStack.push(' -> ' + t.file + ': ' + t.line + (t.function ? ' (in function "' + t.function +'")' : ''));
        });
    }

    console.error(msgStack.join('\n'));
    phantom.exit(1);
}

page.open('http://localhost:11313' + system.args[1].replace(/^public/, ""), function(status) {
    setTimeout(function() {
        console.log(page.content);
        page.close();
        server.close();
        phantom.exit(0);
    }, 500);
});
