package com.example.baserobo.ui.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.example.baserobo.databinding.FragmentHomeBinding
import org.qtproject.example.RoboApp.RoboContent.Screen01
import org.qtproject.qt.android.QtQuickView
import org.qtproject.qt.android.QtQuickViewContent
import org.qtproject.qt.android.QtQmlStatus
import org.qtproject.qt.android.QtQmlStatusChangeListener


class HomeFragment : Fragment(), QtQmlStatusChangeListener {

    private var homeFragmentBinding: FragmentHomeBinding? = null
    private val binding get() = homeFragmentBinding!!

    private lateinit var homeQmlContent: Screen01
    private lateinit var homeQtQuickView: QtQuickView

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        homeQtQuickView = QtQuickView(requireActivity())
        homeQmlContent = Screen01()
        homeQmlContent.setStatusChangeListener(this)

        homeFragmentBinding = FragmentHomeBinding.inflate(inflater, container, false)
        binding.homeQmlFrame.addView(homeQtQuickView)
        homeQtQuickView.loadContent(homeQmlContent)

        var stateIndex = 0
        val statesList = listOf("VehicleToHero", "RobotToHero", "ToVehicle", "ToRobot")
        binding.buttonOne.setOnClickListener {
            stateIndex = (stateIndex + 1) % statesList.size
            homeQmlContent.currentState = statesList[stateIndex]
        }

        return binding.root
    }

    override fun onStatusChanged(status: QtQmlStatus?, content: QtQuickViewContent?) {
        homeQmlContent.connectIsPlayingChangeListener{ _:String, value: Boolean? ->
            binding.buttonOne.text = if (value == true) "Playing...." else "Cycle Animations"
        }
    }
    
    override fun onDestroyView() {
        super.onDestroyView()
        homeFragmentBinding = null
    }
}