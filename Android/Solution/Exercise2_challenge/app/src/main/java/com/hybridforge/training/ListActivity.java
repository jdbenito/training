package com.hybridforge.training;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;

import com.hybridforge.training.datamodel.PersonAdapter;


public class ListActivity extends ActionBarActivity {
    ListView mListView;
    Button mBtnToggle;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_list);

        mListView = (ListView) findViewById(R.id.listView);
        mBtnToggle = (Button) findViewById(R.id.btnToggleData);

        // Create the adapter
        final PersonAdapter adapter = new PersonAdapter(this);
        mListView.setAdapter(adapter);

        mBtnToggle.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                adapter.toggleData();
                adapter.notifyDataSetChanged();
            }
        });
    }
}
