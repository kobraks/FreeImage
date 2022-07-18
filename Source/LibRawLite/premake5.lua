project "LibRaw"
	kind "StaticLib"
	language "c++"
	staticruntime "off"
    
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"libraw/*.h",
		"src/*.cpp",

		"internal/*.h",
		"internal/dcraw_common.cpp",
		"internal/dcraw_fileio.cpp",
		"internal/demosaic_packs.cpp",
    }
	
	removefiles
	{
		"src/libraw_fuji_compressed.cpp",
		"src/libraw_xtrans_compressed.cpp",
	}
	
	defines
	{
		"WIN32",
		"_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"LIBRAW_NODLL",
	}

    includedirs
    {
		".",
		"../ZLib",
    }
	
	links
	{
		"LibJPEG"
	}
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"