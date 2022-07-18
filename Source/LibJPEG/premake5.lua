project "LibJPEG"
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
		"ansi2knr.c",
		"cderror.h",
		"cdjpeg.h",
		"cdjpeg.c",
		"cjpeg.c",
		"ckconfig.c",
		"djpeg.c",
		"example.c",
		"jmemdos.c",
		"jmemmac.c",
		"jmemname.c",
		"jmemansi.c",
		"jpegtran.c",
		"rd*.c",
		"wr*.c",
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