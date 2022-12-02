package com.rahmat.hostapp

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.rahmat.hostapp.databinding.ActivityMainBinding
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngineCache

class MainActivity : AppCompatActivity() {

    lateinit var binding : ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.btn.setOnClickListener {
            startActivity(
                FlutterActivity
                    .withCachedEngine("rahmatx_engine")
                    .build(this)
            )
        }
    }
}