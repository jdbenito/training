package com.hybridforge.training;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.widget.ListView;

import com.hybridforge.training.datamodel.PersonAdapter;


public class ListActivity extends ActionBarActivity {
    ListView mListView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_list);

        mListView = (ListView) findViewById(R.id.listView);

        // Create the adapter
        PersonAdapter adapter = new PersonAdapter(this);
        mListView.setAdapter(adapter);
    }
}
