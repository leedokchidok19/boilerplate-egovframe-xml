package io.leedokchidok.boilerplate.apis.data;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.IOException;

public class PublicData {

	private final String API_ENCODING= "UTF-8";

	/*
	 * Java 1.8 sample code
	 * */
	public void callAPIs() throws IOException {

		final String API_KEY= "";
		String apiUrl = "";

		//URL
		StringBuilder urlBuilder = new StringBuilder(apiUrl);

		//Service Key
		urlBuilder.append("?" + URLEncoder.encode("serviceKey",API_ENCODING) + "=" + API_KEY);

		//데이터 타입(xml, json)
		urlBuilder.append("&" + URLEncoder.encode("_type",API_ENCODING) + "=" + URLEncoder.encode("xml", API_ENCODING));

		URL url = new URL(urlBuilder.toString());

		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");

		System.out.println("Response code: " + conn.getResponseCode());

		BufferedReader rd;

		if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		else rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));

		StringBuilder sb = new StringBuilder();

		String line;

		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}

		rd.close();
		conn.disconnect();

		System.out.println(sb.toString());
	}//callAPIs

}//PublicData