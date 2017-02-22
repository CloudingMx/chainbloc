function encrypt(action,data,key) {        
        var http = new XMLHttpRequest();
        var url = "EncryptServlet";
        var params = "_action="+action+"&_data="+data+"&_key="+key;
        http.open("POST", url, false);// If async=false, then you'll miss progress bar support.
        //Send the proper header information along with the request
        http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        http.onreadystatechange = function() {//Call a function when the state changes.
        if(http.readyState === 4 && http.status === 200) {
            http_response = http.responseText;
        }
        }
        http.send(params);
        
}

