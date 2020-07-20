sendRequest( String data) async {
  
var url = 'http://192.168.43.246:8080/dLicence/api/validateUser';
    http.post(url, headers: {"Content-Type": "application/json"}, body: data)
        .then((response) {
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
     //Stateclass userdata= Stateclass.fromJson(response.body)
     final String res = response.body;
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
      //  _onFailureResponse(new Exception("Error while fetching data"));
      } else {
        //Parsing json response to particular Object.
        print(json.decode(res));

        // Unable to cast json here...
        final parsed = json.decode(res).cast<Map<String, dynamic>>();
        parsed.map<Signinuser>((json) => Signinuser.fromJson(json));
        Signinuser user = parsed.map<Signinuser>((json) => Signinuser.fromJson(json));
        //_onSuccessResponse(signUpResponse);
      }
    });
   
  }
