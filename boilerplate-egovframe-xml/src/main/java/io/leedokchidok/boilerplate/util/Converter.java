package io.leedokchidok.boilerplate.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;

public class Converter {

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public static JSONArray listToJson(List list) {

		//List 생성
		List <Map<String,Object>> listMap = new ArrayList<>(list);
		JSONArray jsonArray = new JSONArray(listMap);

		return jsonArray;
	}
}
