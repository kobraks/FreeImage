project "LibPNG"
	kind "StaticLib"
	language "c"
	staticruntime "off"
    
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"*.h",
		"*.c",
    }
	
	removefiles
	{
		"example.c",
		"pngtest.c",
	}
	
	defines
	{
		"WIN32",
		"WIN32_LEAN_AND_MEAN",
		"VC_EXTRALEAN",
		"_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
	}

    includedirs
    {
		".",
		"../ZLib",
    }
	
	links
	{
		"ZLib",
	}
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"