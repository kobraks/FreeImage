project "LibWebP"
	kind "StaticLib"
	language "c"
	staticruntime "off"
    
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"**.h",
		"**.c",
    }
	
	removefiles
	{
	}
	
	defines
	{
		"WIN32",
		"_LIB",
		"_WINDOWS",
		"WIN32_LEAN_AND_MEAN",
		"_CRT_SECURE_NO_DEPRECATE",
	}

    includedirs
    {
		".",
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