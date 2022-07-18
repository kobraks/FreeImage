project "LibTIFF4"
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
		"tif_config.wince.h",
		"tif_config.vc.h",
	
		"tiffconf.vc.h",
		"tiffconf.wince.h",
		
		"tifconf.vc.h",
		"tifconf.wince.h",
	
		"mkg3states.c",
		"mkspans.c",
		
		"tif_acorn.c",
		"tif_atari.c",
		"tif_apple.c",
		"tif_msdos.c",
		"tif_unix.c",
		"tif_vms.c",
		"tif_wince.c",
		"tif_win3.c",
		"tif_win32.c",
		
		"tif_jbig.c",
		"tif_jpeg_12.c",
		"tif_zstd.c",
	}
	
	defines
	{
		"WIN32",
		"_LIB",
	}

    includedirs
    {
		"..",
		"../LibJPEG",
		"../ZLib",
    }
	
	links
	{
		"LibJPEG",
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