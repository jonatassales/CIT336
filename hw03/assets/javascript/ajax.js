function createXMLHttp() {
  //If XMLHttpRequest is available then using it
  if (typeof XMLHttpRequest !== undefined) {
    return new XMLHttpRequest;
  //if window.ActiveXObject is available than the user is using IE...so we have to create the newest version XMLHttp object
  } else if (window.ActiveXObject) {
    var ieXMLHttpVersions = ['MSXML2.XMLHttp.5.0', 'MSXML2.XMLHttp.4.0', 'MSXML2.XMLHttp.3.0', 'MSXML2.XMLHttp', 'Microsoft.XMLHttp'],
        xmlHttp;
    //In this array we are starting from the first element (newest version) and trying to create it. If there is an
    //exception thrown we are handling it (and doing nothing ^^)
    for (var i = 0; i < ieXMLHttpVersions.length; i++) {
      try {
        xmlHttp = new ActiveXObject(ieXMLHttpVersions[i]);
        return xmlHttp;
      } catch (e) {
      }
    }
  }
}

function insinfo(sendForm) {
   var dataArray = [];
   //Getting the data from all elements in the form
   for (var i = 0; i < sendForm.elements.length; i++) {
     var encodedData = encodeURIComponent(sendForm.elements[i].name);
     encodedData += "=";
     encodedData += encodeURIComponent(sendForm.elements[i].value);
     dataArray.push(encodedData);
   }
   return dataArray.join("&");
 }

function FormSuccess() { location.assign("index.php?alert=success") }

function FormError() { location.assign("index.php?alert=error") }

function sendData(form) {
  var xmlHttp = createXMLHttp();
  xmlHttp.open('post', 'controller/users.php', true);
  xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  xmlHttp.send(insinfo(form));
  xmlHttp.onreadystatechange = function() {
    if (xmlHttp.readyState === 4) {
      if (xmlHttp.status === 200) {
        FormSuccess.call(null, xmlHttp.responseText);
      } else {
        FormError.call(null, xmlHttp.responseText);
      }
    } else {
      //still processing
    }
  };
}

function sendForm() {
  sendData(document.getElementById("user"));
}

function searchName() {
  var name = document.getElementById('search').value;
  var xmlHttp = createXMLHttp();
  xmlHttp.open('post', 'controller/users.php', true);
  xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  xmlHttp.send('search=true&name='+name);
  xmlHttp.onreadystatechange = function() {
    if (xmlHttp.readyState === 4) {
      if (xmlHttp.status === 200) {
        searchSuccess.call(null, xmlHttp.responseText);
      } else {
        searchError.call(null, xmlHttp.responseText);
      }
    } else {
      //still processing
    }
  };
}

function searchSuccess(response) {
  document.getElementById('users-list').innerHTML = response;
}

function searchError() {

}
