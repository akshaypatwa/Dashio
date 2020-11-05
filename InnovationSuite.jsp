<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.apache.http.client.utils.URIBuilder,java.net.URISyntaxException,org.json.simple.parser.ParseException,org.json.simple.parser.JSONParser,org.json.simple.JSONObject,org.json.simple.JSONArray,java.io.*,java.lang.*,org.apache.http.client.methods.CloseableHttpResponse,org.apache.http.HttpResponse,org.apache.http.client.ClientProtocolException,org.apache.http.client.methods.HttpPost,org.apache.http.client.methods.HttpPut,org.apache.http.impl.client.CloseableHttpClient,org.apache.http.impl.client.HttpClients,org.apache.http.util.EntityUtils,org.json.simple.JSONObject,org.apache.http.entity.StringEntity,com.fasterxml.jackson.databind.ObjectMapper,java.util.*,org.apache.http.client.methods.HttpGet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyDashboard</title>
</head>
<body>

<%! 
String getSessionToken() {
	String sessionToken = "";

	CloseableHttpClient httpClient = HttpClients.createDefault();

	HttpPost httpPost = new HttpPost(
			"https://vyom-dsom-rest.trybmc.com:443/api/jwt/login?username=Allen&password=Password_1234");
	httpPost.setHeader("Content-type", "application/x-www-form-urlencoded");
	String stringData = "";
	try {
		httpPost.setEntity(new StringEntity(stringData));
	} catch (UnsupportedEncodingException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
	// make the call and print the Location
	try (CloseableHttpResponse response1 = httpClient.execute(httpPost)) {
		if (response1.getStatusLine().getStatusCode() == 200) {
			sessionToken = EntityUtils.toString(response1.getEntity());

		} else {
			sessionToken = EntityUtils.toString(response1.getEntity());

		}
	} catch (ClientProtocolException e) {
		e.printStackTrace();
		// log.warn("CreateCommentClientProtocolException: " +
		// e.getMessage());
	} catch (IOException e) {
		e.printStackTrace();
		// log.warn("CreateCommentIOException: " + e.getMessage());
	}

	return sessionToken;
}

String getStatistics(String WOStatus) throws URISyntaxException {
	String response = "";
	String Qualification = WOStatus;//"Status=" + WOStatus
	CloseableHttpClient httpclient = HttpClients.createDefault();
	URIBuilder builder = new URIBuilder("https://vyom-dsom-rest.trybmc.com/api/arsys/v1/entry/WOI:WorkOrder");
	builder.setParameter("q", Qualification);
	builder.setParameter("fields", "values(1,2,3,4,5,6,7,1000000000)");

	HttpGet httpget = new HttpGet(builder.build());
	httpget.setHeader("Content-type", "application/x-www-form-urlencoded");
	httpget.setHeader("Authorization", getSessionToken());

	// Printing the method used
	System.out.println("Request Type: " + httpget.getMethod());

	try (CloseableHttpResponse response1 = httpclient.execute(httpget)) {

		if (response1.getStatusLine().getStatusCode() == 200) {
			response = EntityUtils.toString(response1.getEntity());

		}

	} catch (ClientProtocolException e) {
		e.printStackTrace();
		// log.warn("CreateCommentClientProtocolException: " +
		// e.getMessage());
	} catch (IOException e) {
		e.printStackTrace();
		// log.warn("CreateCommentIOException: " + e.getMessage());
	}
	return response;
}

int getSatusCount(String status) throws ParseException, URISyntaxException{
	JSONParser parser = new JSONParser();
	JSONArray entriesArray = null;
	
		Object parsedObject = parser.parse(getStatistics(status));
		JSONObject convertedJSON = (JSONObject) parsedObject;
		entriesArray = (JSONArray) convertedJSON.get("entries");

	
	
	return entriesArray.size();
}
%>

<%
String uname=(String)request.getSession().getAttribute("com.bmc.bsm.myit.filter.InstrumentationFilter.USER_ID");
String wholeObject=getStatistics("'Submitter'=\""+uname+"\"");
session.setAttribute("Object", wholeObject);
session.setAttribute("uname", uname);
int totalWO=0;
int completedWO=0;
int openWO=0;
float completedWOavg=0;
float openWOavg=0;
//String uname=(String)request.getSession().getAttribute("com.bmc.bsm.myit.filter.InstrumentationFilter.USER_ID");
try {
	totalWO=getSatusCount("");
	completedWO=getSatusCount("Status>=5");
	openWO=totalWO-completedWO;
	completedWOavg=(completedWO * 100)/totalWO;
	openWOavg=(openWO*100)/totalWO;
	
	
	
} catch (ParseException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (URISyntaxException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
	
	%>


</body>
</html>