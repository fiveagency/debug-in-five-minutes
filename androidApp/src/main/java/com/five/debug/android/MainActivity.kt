package com.five.debug.android

import android.os.Bundle
import android.view.View
import android.view.WindowManager
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.res.ResourcesCompat
import com.five.debug.BugResolver
import com.five.debug.android.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding

    private val bugResolver = BugResolver()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        val view = binding.root
        setContentView(view)
        setStatusBarColor()
        resolveBugs()
    }

    private fun setStatusBarColor() {
        window.apply {
            addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS)
            statusBarColor = ResourcesCompat.getColor(resources, R.color.statusBarColor, null)
        }
    }

    private fun resolveBugs() {
        binding.bug1.visibility = if (bugResolver.fixBugOne()) View.GONE else View.VISIBLE
        binding.bug2.visibility = if (bugResolver.fixBugTwo()) View.GONE else View.VISIBLE
        binding.bug3.visibility = if (bugResolver.fixBugThree()) View.GONE else View.VISIBLE
        binding.bug4.visibility = if (bugResolver.fixBugFour()) View.GONE else View.VISIBLE
        binding.bug5.visibility = if (bugResolver.fixBugFive()) View.GONE else View.VISIBLE
    }
}
