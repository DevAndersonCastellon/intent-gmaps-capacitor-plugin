package com.andev.plugins.intentgmaps;

import android.content.Intent;
import android.net.Uri;

import com.getcapacitor.JSObject;
import com.getcapacitor.NativePlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;

@NativePlugin
public class IntentGmaps extends Plugin {

    @PluginMethod
    public void openMap(PluginCall call) {
        Double latitude = call.getDouble("latitude");
        Double longitude = call.getDouble("longitude");
        String query = call.getString("query");

        Uri gmmIntentUri = Uri.parse("geo:" + latitude + "," + longitude + "?z=" + 10 + "&q=" + query);
        Intent mapIntent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
        mapIntent.setPackage("com.google.android.apps.maps");
        if (mapIntent.resolveActivity(getContext().getPackageManager()) != null) {
            getContext().startActivity(mapIntent);
            call.resolve();
        } else { call.reject("Gmaps no installed"); }

    }
}
