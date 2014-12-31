package com.hybridforge.training;

import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;

public class LoginActivity extends ActionBarActivity {
    ProgressBar mLoginProgress;
    Button mLoginButton;
    EditText mTxtUsername;
    EditText mTxtPassword;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        // Get a handle on the UI elements
        mLoginProgress = (ProgressBar) findViewById(R.id.login_progress);
        mLoginButton = (Button) findViewById(R.id.btnLogin);
        mTxtUsername = (EditText) findViewById(R.id.txtUsername);
        mTxtPassword = (EditText) findViewById(R.id.txtPassword);

        // Connect an action to the login button
        mLoginButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                LoginTask myLoginTask = new LoginTask();
                myLoginTask.execute();
            }
        });
    }

    // Simulates a login task by displaying a progress indicator
    // for a second
    private class LoginTask extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();

            // Disable text fields to prevent entries from being changed
            mTxtUsername.setEnabled(false);
            mTxtPassword.setEnabled(false);

            // Hide the login button and show the progress
            mLoginButton.setVisibility(View.GONE);
            mLoginProgress.setVisibility(View.VISIBLE);
        }

        @Override
        protected Void doInBackground(Void... params) {
            try {
                Thread.sleep(2000);
            } catch (InterruptedException e) {
                Log.e("ERROR", "InterruptedException encountered");
            }
            return null;
        }

        @Override
        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);

            // Create an intent to launch the list activity
            Intent listIntent = new Intent(LoginActivity.this, MyList.class);
            LoginActivity.this.startActivity(listIntent);

            // Terminate the login activity
            LoginActivity.this.finish();
        }
    }
}
