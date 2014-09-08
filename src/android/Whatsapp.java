package mobi.moica.whatsapp;
 
import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONObject;
import org.json.JSONArray;
import org.json.JSONException;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;

public class Whatsapp extends CordovaPlugin {
    public static final String ACTION_WHATSAPP_SEND = "send";
    
    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        try {
            if (ACTION_WHATSAPP_SEND.equals(action)) {
                   String send_to = args.getString(0);
                   Uri mUri = Uri.parse("smsto:" + send_to);
                   Intent mIntent = new Intent(Intent.ACTION_SENDTO, mUri);
                   mIntent.setPackage("com.whatsapp");
                   /* mIntent.putExtra("sms_body", "The text goes here"); */
                   mIntent.putExtra("chat",true);

                   this.cordova.getActivity().startActivity(mIntent);
                   callbackContext.success();
                   return true;
            }
            callbackContext.error("Invalid action");
            return false;
        } catch(Exception e) {
            System.err.println("Exception: " + e.getMessage());
            callbackContext.error(e.getMessage());
            return false;
        } 
    }
}