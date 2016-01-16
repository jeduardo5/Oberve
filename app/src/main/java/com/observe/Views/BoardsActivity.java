package com.observe.Views;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.ListView;

import com.observe.Adapter;
import com.observe.R;

import java.util.Arrays;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;
import butterknife.OnItemClick;

public class BoardsActivity extends AppCompatActivity {

    @Bind(R.id.boards_list) ListView boardsList;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_boards);
        ButterKnife.bind(this);

        List<String> values = Arrays.asList("Doctor", "Lawyer", "Engineer", "Sports Star", "Entertainer", "Movie Personnel");
        boardsList.setAdapter(new Adapter(this, values));
    }

    @OnItemClick(R.id.boards_list)
    public void onBoardItemClick(){
        startActivity(new Intent(this, ProfessionsActivity.class));
    }
}