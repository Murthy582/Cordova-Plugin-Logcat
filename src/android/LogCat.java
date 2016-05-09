package org.apache.cordova.logcat;
import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaInterface;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;
import android.app.KeyguardManager;
import android.content.Context;

import android.provider.Settings;

public class LogCat extends CordovaPlugin {
	protected void pluginInitialize() {
	  }

	  public boolean execute(String action, JSONArray args, CallbackContext callbackContext) 
	      throws JSONException {
	    if (action.equals("sendLogs")) {
                        // save logcat in file
                File outputFile = new File(Environment.getExternalStorageDirectory(),
                        "logcat.txt");
                try {
                    Runtime.getRuntime().exec(
                            "logcat -f " + outputFile.getAbsolutePath());
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

             //send file using email
             Intent emailIntent = new Intent(Intent.ACTION_SEND);
             // Set type to "email"
             emailIntent.setType("vnd.android.cursor.dir/email");
             String to[] = {"yourmail@gmail.com"};
             emailIntent.putExtra(Intent.EXTRA_EMAIL, to);
             // the attachment
             emailIntent.putExtra(Intent.EXTRA_STREAM, outputFile.getAbsolutePath());
             // the mail subject
             emailIntent.putExtra(Intent.EXTRA_SUBJECT, "Subject");
             startActivity(Intent.createChooser(emailIntent , "Send email..."));
	    }
          else{        
	    return false;
	  }
      }
}