project "imgui"
  kind "StaticLib"
  language "c++"
  cppdialect "C++20"
  staticruntime "off"

  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

  files
  {
      "**.h",
      "**.cpp",
  
      -- Backends File to use GLFW and OPENGL    
      "backends/imgui_impl_glfw.h",
      "backends/imgui_impl_glfw.cpp",
      "backends/imgui_impl_opengl3.h",
      "backends/imgui_impl_opengl3.cpp",
      "backends/imgui_impl_opengl3_loader.cpp",
  
      -- Optional std::string helpers
      "misc/cpp/imgui_stdlib.h",
      "misc/cpp/imgui_stdlib.cpp",

      -- Visual Studio debugger helpers
      "misc/debuggers/imgui.natvis",
      "misc/debuggers/imgui.natstepfilter"
  }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"

    filter "configurations:Dist"
        runtime "Release"
        optimize "Full"
  
