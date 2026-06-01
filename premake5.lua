project "imgui"
  kind "StaticLib"
  language "c++"
  cppdialect "C++20"
  staticruntime "off"

  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

  files
  {
        -- Core header
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imgui_demo.cpp",
    
        -- Internal headers
        "imgui_internal.h",
        "imconfig.h",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
    
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
  
