project "LibJXR"
	kind "StaticLib"
	language "c"
	staticruntime "off"
    
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"common/include/*.h",
		"image/**.h",
		"image/**.c",
		"jxrgluelib/*.h",
		"jxrgluelib/*.c",
    }
	
	removefiles
	{
		"image/sys/perfTimerANSI.c"
	}
	
	defines
	{
		"WIN32",
		"_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"DISABLE_PERF_MEASUREMENT",
	}

    includedirs
    {
		"image/sys",
		"jxrgluelib",
    }
	
	links
	{
	}
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"