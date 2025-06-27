package com.example.baserobo.ui.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import com.example.baserobo.databinding.FragmentHomeBinding
import org.qtproject.example.RoboApp.RoboContent.Screen01
import android.widget.FrameLayout
import org.qtproject.qt.android.QtQuickView
import org.qtproject.qt.android.QtQuickViewContent
import org.qtproject.qt.android.QtQmlStatus
import org.qtproject.qt.android.QtQmlStatusChangeListener


class HomeFragment : Fragment(), QtQmlStatusChangeListener{

    private var _binding: FragmentHomeBinding? = null
    private lateinit var homeQmlContent: Screen01
    private lateinit var homeQtQuickView: QtQuickView
    private val animationList = listOf("VehicleToHero", "RobotToHero", "ToVehicle", "ToRobot")
    private var animationCounter = 0

    // This property is only valid between onCreateView and
    // onDestroyView.
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        val homeViewModel =
            ViewModelProvider(this).get(HomeViewModel::class.java)
        homeQtQuickView = QtQuickView(this.activity)
        homeQmlContent = Screen01()
        homeQmlContent.setStatusChangeListener(this)

        val params  = FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)

        _binding = FragmentHomeBinding.inflate(inflater, container, false)
        val root: View = binding.root
        binding.homeQmlFrame.addView(homeQtQuickView, params)
        homeQtQuickView.loadContent(homeQmlContent)

        val textView: TextView = binding.textHome
        homeViewModel.text.observe(viewLifecycleOwner) {
            textView.text = it
        }
        binding.buttonOne.setOnClickListener {
            animationCounter++
            homeQtQuickView.setProperty("currentState", animationList[animationCounter % animationList.size])
        }
        return root
    }
    override fun onStatusChanged(status: QtQmlStatus?, content: QtQuickViewContent?) {
        homeQmlContent.connectIsPlayingChangeListener{ _:String, value: Boolean? ->
            if (homeQtQuickView!!.getProperty("isPlaying"))
            {
                binding.buttonOne.text = "Playing...."
            }
            else
                binding.buttonOne.text = "Cycle Animations"
        }
    }
    
    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}