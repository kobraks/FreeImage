project "ZLib"
    kind "StaticLib"
    language "C"
    staticruntime "off"
    
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"*.h",
		"*.c"
    }
	
	removefiles
	{
		"example.c",
		"minigzip.c",
	}
	
	defines
	{
		"WIN32",
		"_LIB",
		"_CRT_SECURE_NO_DEPRECATE"
	}

    includedirs
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