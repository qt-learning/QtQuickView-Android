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
import org.qtproject.qt.android.QtQuickView
import org.qtproject.qt.android.QtQuickViewContent
import android.widget.FrameLayout

class HomeFragment : Fragment() {

    private var _binding: FragmentHomeBinding? = null
    private var homeQmlContent: Screen01? = null
    private var homeQtQuickView: QtQuickView? = null

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
        val params: ViewGroup.LayoutParams = FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)

        _binding = FragmentHomeBinding.inflate(inflater, container, false)
        val root: View = binding.root
        binding.homeQmlFrame.addView(homeQtQuickView, params)
        homeQtQuickView?.loadContent(homeQmlContent)

        val textView: TextView = binding.textHome
        homeViewModel.text.observe(viewLifecycleOwner) {
            textView.text = it
        }
        return root
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}