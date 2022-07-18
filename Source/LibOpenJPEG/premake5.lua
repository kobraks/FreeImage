project "LibOpenJPEG"
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
		"t1_generate_luts.c",
		"cidx_manager.h",
		"opj_codec.h",
		
		"cidx_manager.c",
		"phix_manager.c",
		"ppix_manager.c",
		"t1_generate_luts.c",
		"thix_manager.c",
		"tpix_manager.c",
	}
	
	defines
	{
		"WIN32",
		"WIN32_LEAN_AND_MEAN",
		"VC_EXTRALEAN",
		"_LIB",
		"OPJ_STATIC",
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