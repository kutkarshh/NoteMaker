package com.helper;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class Date2String {

	public static String formatTimeDifference(Date pastDate) {
		Date currentDate = new Date();
		long diffInMillis = currentDate.getTime() - pastDate.getTime();

		long diffInSeconds = TimeUnit.MILLISECONDS.toSeconds(diffInMillis);
		long diffInMinutes = TimeUnit.MILLISECONDS.toMinutes(diffInMillis);
		long diffInHours = TimeUnit.MILLISECONDS.toHours(diffInMillis);

		if (diffInSeconds < 60) {
			return diffInSeconds + " seconds ago";
		} else if (diffInMinutes < 60) {
			return diffInMinutes + " minutes ago";
		} else if (diffInHours < 24) {
			return diffInHours + " hours ago";
		} else {
			SimpleDateFormat outputFormatter = new SimpleDateFormat("MM/dd/yyyy hh:mm a");
			return outputFormatter.format(pastDate);
		}
	}

}
