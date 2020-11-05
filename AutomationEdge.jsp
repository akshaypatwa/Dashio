<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.io.*,org.apache.http.client.methods.CloseableHttpResponse,org.apache.http.client.ClientProtocolException,org.apache.http.client.methods.HttpPost,org.apache.http.client.methods.HttpPut,org.apache.http.impl.client.CloseableHttpClient,org.apache.http.impl.client.HttpClients,org.apache.http.util.EntityUtils,org.json.simple.JSONObject,org.apache.http.entity.StringEntity,com.fasterxml.jackson.databind.ObjectMapper,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vyomlabs PVT. LTD.</title>
</head>
<body>
	<%!String getSessionToken() {

		String sessionToken = "";

		CloseableHttpClient httpClient = HttpClients.createDefault();

		HttpPost httpPost = new HttpPost(
				"https://t3.automationedge.com/aeengine/rest/authenticate?username=YogeshS&password=Yogesh@123");
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
			//log.warn("CreateCommentClientProtocolException: " + e.getMessage());
		} catch (IOException e) {
			e.printStackTrace();
			// log.warn("CreateCommentIOException: " + e.getMessage());
		}

		return sessionToken;
	}%>
	<%! String executeAutomationWorkflow(String Email,String Summary,String Detail) {
		ObjectMapper mapper = new ObjectMapper();
		UUID uniqueKey = UUID.randomUUID();
		String aeSessionToken = getSessionToken();
		Map<String, String> jsonSessionToken = null;
		String executeWorkFlow = "";
		try {
			jsonSessionToken = mapper.readValue(aeSessionToken, Map.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
		CloseableHttpClient httpClient = HttpClients.createDefault();

		HttpPost httpPost = new HttpPost("https://t3.automationedge.com/aeengine/rest/execute");
		httpPost.setHeader("Content-type", "application/json");
		httpPost.setHeader("X-session-token", jsonSessionToken.get("sessionToken"));
		String stringData = "{\r\n\t\"orgCode\": \"YOGESH_SHAH-BMC_HELIX\",\r\n\t\"workflowName\": \"Dashio\",\r\n\t\"userId\": \"YogeshS\",\r\n\t\"sourceId\": \""+uniqueKey+"\",\r\n\t\"source\": \"Dashio\",\r\n\t\"responseMailSubject\": \"null\",\r\n\t\"params\": [{\r\n\t\t\t\"name\": \"Email\",\r\n\t\t\t\"value\": \""+Email+"\",\r\n\t\t\t\"type\": \"String\",\r\n\t\t\t\"order\": 1,\r\n\t\t\t\"secret\": false,\r\n\t\t\t\"optional\": false,\r\n\t\t\t\"displayName\": \"Email\"\r\n\t\t},\r\n\t\t{\r\n\t\t\t\"name\": \"Summary\",\r\n\t\t\t\"value\": \""+Summary+"\",\r\n\t\t\t\"type\": \"String\",\r\n\t\t\t\"order\": 2,\r\n\t\t\t\"secret\": false,\r\n\t\t\t\"optional\": false,\r\n\t\t\t\"displayName\": \"Summary\"\r\n\t\t},\r\n\t\t{\r\n\t\t\t\"name\": \"Detail\",\r\n\t\t\t\"value\": \""+Detail+"\",\r\n\t\t\t\"type\": \"String\",\r\n\t\t\t\"order\": 3,\r\n\t\t\t\"secret\": false,\r\n\t\t\t\"optional\": false,\r\n\t\t\t\"displayName\": \"Detail\"\r\n\t\t}\r\n\t]\r\n}";
		try {
			httpPost.setEntity(new StringEntity(stringData));
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		// make the call and print the Location
		try (CloseableHttpResponse response2 = httpClient.execute(httpPost)) {
			if (response2.getStatusLine().getStatusCode() == 200) {
				executeWorkFlow = EntityUtils.toString(response2.getEntity());

			} else {
				executeWorkFlow = EntityUtils.toString(response2.getEntity());

			}
		} catch (ClientProtocolException e) {
			e.printStackTrace();
			//log.warn("CreateCommentClientProtocolException: " + e.getMessage());
		} catch (IOException e) {
			e.printStackTrace();
			// log.warn("CreateCommentIOException: " + e.getMessage());
		}
		System.out.println(executeWorkFlow);
		return executeWorkFlow;
	}%>
	
	<%
	String Email=request.getParameter("Email");
	String Summary=request.getParameter("Summary");
	String Detail=request.getParameter("Detail");
	 String result=executeAutomationWorkflow(Email,Summary,Detail);
	 
	response.sendRedirect("Dashio_Home.jsp");
	%>
</body>
</html>