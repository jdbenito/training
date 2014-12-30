package com.hybridforge.training.datamodel;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.hybridforge.training.R;

import java.util.List;

/**
 * This object serves as the data source for the list view
 *
 * @author jbenito
 */
public class PersonAdapter extends BaseAdapter {
    private Context mCtx;

    private class ViewHolder {
        TextView mTxtTitle;
        TextView mSubTitle;
    }

    public PersonAdapter(Context ctx) {
        mCtx = ctx;
    }

    @Override
    public int getCount() {
        List<Person> testData = Person.getTestData();
        return testData.size();
    }

    @Override
    public Person getItem(int position) {
        List<Person> testData = Person.getTestData();
        return testData.get(position);
    }

    @Override
    public long getItemId(int position) {
        return getItem(position).hashCode();
    }

    /**
     * Get a View that displays the data at the specified position in the data set. You can either
     * create a View manually or inflate it from an XML layout file. When the View is inflated, the
     * parent View (GridView, ListView...) will apply default layout parameters unless you use
     * {@link android.view.LayoutInflater#inflate(int, android.view.ViewGroup, boolean)}
     * to specify a root view and to prevent attachment to the root.
     *
     * @param position    The position of the item within the adapter's data set of the item whose view
     *                    we want.
     * @param convertView The old view to reuse, if possible. Note: You should check that this view
     *                    is non-null and of an appropriate type before using. If it is not possible to convert
     *                    this view to display the correct data, this method can create a new view.
     *                    Heterogeneous lists can specify their number of view types, so that this View is
     *                    always of the right type (see {@link #getViewTypeCount()} and
     *                    {@link #getItemViewType(int)}).
     * @param parent      The parent that this view will eventually be attached to
     * @return A View corresponding to the data at the specified position.
     */
    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        LayoutInflater inflater = (LayoutInflater) mCtx.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        ViewHolder holder;

        if (convertView == null) {
            convertView = inflater.inflate(R.layout.row_layout, null);
            holder = new ViewHolder();
            holder.mTxtTitle = (TextView) convertView.findViewById(R.id.txtRowTitle);
            holder.mSubTitle = (TextView) convertView.findViewById(R.id.txtRowSubtitle);
            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }

        // Populate the view
        Person currentPerson = getItem(position);
        holder.mTxtTitle.setText(currentPerson.getFullName());
        holder.mSubTitle.setText(currentPerson.getAgeString());

        return convertView;
    }
}
