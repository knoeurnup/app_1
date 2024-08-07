const express = require('express');
const app = express();

app.get('/', function(req, res){
	res.send("Hello APP1");
});




app.get('/v1', function(req, res){
	res.send("Hello APP1");
});

app.listen(8080,function(){
	console.log('app is running in port 8080');
})
