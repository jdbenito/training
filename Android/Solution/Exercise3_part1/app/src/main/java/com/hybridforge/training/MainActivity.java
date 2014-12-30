package com.hybridforge.training;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.widget.TextView;


public class MainActivity extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // PRO-TIP: To open the activity_main source file, Command + click 'activity_main'
        setContentView(R.layout.activity_main);

        // To get a handle on a UI element, use findViewById(int resID)
        TextView myTextView = (TextView) findViewById(R.id.myTextView);

        // To retrieve a string resource, use getString(int resID)
        String myCustomText = getString(R.string.myCustomText);

        // Change the content of the text view
        myTextView.setText(myCustomText);
    }

//    @Override
//    public boolean onCreateOptionsMenu(Menu menu) {
//        // Inflate the menu; this adds items to the action bar if it is present.
//        getMenuInflater().inflate(R.menu.menu_main, menu);
//        return true;
//    }
//
//    @Override
//    public boolean onOptionsItemSelected(MenuItem item) {
//        // Handle action bar item clicks here. The action bar will
//        // automatically handle clicks on the Home/Up button, so long
//        // as you specify a parent activity in AndroidManifest.xml.
//        int id = item.getItemId();
//
//        //noinspection SimplifiableIfStatement
//        if (id == R.id.action_settings) {
//            return true;
//        }
//
//        return super.onOptionsItemSelected(item);
//    }
}
