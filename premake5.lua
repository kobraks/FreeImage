project "FreeImageLib"
    kind "StaticLib"
    language "C++"
    staticruntime "off"
	characterset "MBCS"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"Source/*.h",
		"Source/FreeImage/PSDParser.h",
		"Source/Metadata/*.h",
		"Source/FreeImageToolkit/Resize.h",

		"Source/FreeImage/*.cpp",
		"Source/Metadata/*.cpp",
		"Source/FreeImageToolkit/*.cpp",
    }
	
	removefiles
	{
	}
	
	defines
	{
		"WIN32",
		"OPJ_STATIC",
		"FREEIMAGE_LIB",
		"LIBRAW_NODLL",
		"_CRT_SECURE_NO_DEPRECATE"
	}

    includedirs
    {
		"Source/ZLib",
		"Source/deprecationManager",
		"Source/FreeImage",
		"Source/OpenEXR",
		"Source/OpenEXR/Half",
		"Source/OpenEXR/Iex",
		"Source/OpenEXR/IlmImf",
		"Source/OpenEXR/Imath",
		"Source/OpenEXR/IlmThread",
		"Source/LibJXR/jxrgluelib",
		"Source/LibJXR/image/sys",
		"Source",
    }
	
	links
	{
		"ZLib",
		"LibJPEG",
		"LibJXR",
		"LibOpenJPEG",
		"LibPNG",
		"LibRAW",
		"LibTIFF4",
		"LibWebP",
		"OpenEXR",
	}
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
		
project "FreeImagePlus"
	kind "StaticLib"
	language "c++"
	staticruntime "off"
	characterset "MBCS"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"Wrapper/FreeImagePlus/*.h",
		"Wrapper/FreeImagePlus/src/*.cpp",
    }
	
	removefiles
	{
	}
	
	defines
	{
		"WIN32",
		"WIN32_LEAN_AND_MEAN",
		"VC_EXTRALEAN",
		"FIP_EXPORTS",
		"FREEIMAGE_LIB",
		"_LIB",
		"_CRT_SECURE_NO_DEPRECATE"
	}

    includedirs
    {
		"Wrapper/FreeImagePlus",
		"Source",
    }
	
	links
	{
		"FreeImageLib",
	}
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

project "ZLib"
    kind "StaticLib"
    language "C"
    staticruntime "off"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"Source/ZLib/*.h",
		"Source/ZLib/*.c"
    }
	
	removefiles
	{
		"source/zlib/example.c",
		"source/zlib/minigzip.c",
	}
	
	defines
	{
		"WIN32",
		"_LIB",
		"_CRT_SECURE_NO_DEPRECATE"
	}

    includedirs
    {
		"Source/ZLib/"
    }
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
		
project "OpenEXR"
	kind "StaticLib"
	language "c++"
	staticruntime "off"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"Source/OpenEXR/Half/half.h",
		"Source/OpenEXR/Half/half.cpp",
		
		"Source/OpenEXR/Iex/*.h",
		"Source/OpenEXR/Iex/IexBaseExc.cpp",
		"Source/OpenEXR/Iex/IexThrowErrnoExc.cpp",
		
		"Source/OpenEXR/IlmImf/*.h",
		"Source/OpenEXR/IlmImf/b44ExpLogTable.cpp",
		"Source/OpenEXR/IlmImf/ImfAcesFile.cpp",
		"Source/OpenEXR/IlmImf/ImfAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfB44Compressor.cpp",
		"Source/OpenEXR/IlmImf/ImfBoxAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfChannelList.cpp",
		"Source/OpenEXR/IlmImf/ImfChannelListAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfChromaticities.cpp",
		"Source/OpenEXR/IlmImf/ImfChromaticitiesAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfCompositeDeepScanLine.cpp",
		"Source/OpenEXR/IlmImf/ImfCompressionAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfCompressor.cpp",
		"Source/OpenEXR/IlmImf/ImfConvert.cpp",
		"Source/OpenEXR/IlmImf/ImfCRgbaFile.cpp",
		"Source/OpenEXR/IlmImf/ImfDeepCompositing.cpp",
		"Source/OpenEXR/IlmImf/ImfDeepFrameBuffer.cpp",
		"Source/OpenEXR/IlmImf/ImfDeepImageStateAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfDeepScanLineInputFile.cpp",
		"Source/OpenEXR/IlmImf/ImfDeepScanLineInputPart.cpp",
		"Source/OpenEXR/IlmImf/ImfDeepScanLineOutputFile.cpp",
		"Source/OpenEXR/IlmImf/ImfDeepScanLineOutputPart.cpp",
		"Source/OpenEXR/IlmImf/ImfDeepTiledInputFile.cpp",
		"Source/OpenEXR/IlmImf/ImfDeepTiledInputPart.cpp",
		"Source/OpenEXR/IlmImf/ImfDeepTiledOutputFile.cpp",
		"Source/OpenEXR/IlmImf/ImfDeepTiledOutputPart.cpp",
		"Source/OpenEXR/IlmImf/ImfDoubleAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfDwaCompressor.cpp",
		"Source/OpenEXR/IlmImf/ImfEnvmap.cpp",
		"Source/OpenEXR/IlmImf/ImfEnvmapAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfFastHuf.cpp",
		"Source/OpenEXR/IlmImf/ImfFloatAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfFloatVectorAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfFrameBuffer.cpp",
		"Source/OpenEXR/IlmImf/ImfFramesPerSecond.cpp",
		"Source/OpenEXR/IlmImf/ImfGenericInputFile.cpp",
		"Source/OpenEXR/IlmImf/ImfGenericOutputFile.cpp",
		"Source/OpenEXR/IlmImf/ImfHeader.cpp",
		"Source/OpenEXR/IlmImf/ImfHuf.cpp",
		"Source/OpenEXR/IlmImf/ImfInputFile.cpp",
		"Source/OpenEXR/IlmImf/ImfInputPart.cpp",
		"Source/OpenEXR/IlmImf/ImfInputPartData.cpp",
		"Source/OpenEXR/IlmImf/ImfIntAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfIO.cpp",
		"Source/OpenEXR/IlmImf/ImfKeyCode.cpp",
		"Source/OpenEXR/IlmImf/ImfKeyCodeAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfLineOrderAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfLut.cpp",
		"Source/OpenEXR/IlmImf/ImfMatrixAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfMisc.cpp",
		"Source/OpenEXR/IlmImf/ImfMultiPartInputFile.cpp",
		"Source/OpenEXR/IlmImf/ImfMultiPartOutputFile.cpp",
		"Source/OpenEXR/IlmImf/ImfMultiView.cpp",
		"Source/OpenEXR/IlmImf/ImfOpaqueAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfOutputFile.cpp",
		"Source/OpenEXR/IlmImf/ImfOutputPart.cpp",
		"Source/OpenEXR/IlmImf/ImfOutputPartData.cpp",
		"Source/OpenEXR/IlmImf/ImfPartType.cpp",
		"Source/OpenEXR/IlmImf/ImfPizCompressor.cpp",
		"Source/OpenEXR/IlmImf/ImfPreviewImage.cpp",
		"Source/OpenEXR/IlmImf/ImfPreviewImageAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfPxr24Compressor.cpp",
		"Source/OpenEXR/IlmImf/ImfRational.cpp",
		"Source/OpenEXR/IlmImf/ImfRationalAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfRgbaFile.cpp",
		"Source/OpenEXR/IlmImf/ImfRgbaYca.cpp",
		"Source/OpenEXR/IlmImf/ImfRle.cpp",
		"Source/OpenEXR/IlmImf/ImfRleCompressor.cpp",
		"Source/OpenEXR/IlmImf/ImfScanLineInputFile.cpp",
		"Source/OpenEXR/IlmImf/ImfStandardAttributes.cpp",
		"Source/OpenEXR/IlmImf/ImfStdIO.cpp",
		"Source/OpenEXR/IlmImf/ImfStringAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfStringVectorAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfSystemSpecific.cpp",
		"Source/OpenEXR/IlmImf/ImfTestFile.cpp",
		"Source/OpenEXR/IlmImf/ImfThreading.cpp",
		"Source/OpenEXR/IlmImf/ImfTileDescriptionAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfTiledInputFile.cpp",
		"Source/OpenEXR/IlmImf/ImfTiledInputPart.cpp",
		"Source/OpenEXR/IlmImf/ImfTiledMisc.cpp",
		"Source/OpenEXR/IlmImf/ImfTiledOutputFile.cpp",
		"Source/OpenEXR/IlmImf/ImfTiledOutputPart.cpp",
		"Source/OpenEXR/IlmImf/ImfTiledRgbaFile.cpp",
		"Source/OpenEXR/IlmImf/ImfTileOffsets.cpp",
		"Source/OpenEXR/IlmImf/ImfTimeCode.cpp",
		"Source/OpenEXR/IlmImf/ImfTimeCodeAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfVecAttribute.cpp",
		"Source/OpenEXR/IlmImf/ImfVersion.cpp",
		"Source/OpenEXR/IlmImf/ImfWav.cpp",
		"Source/OpenEXR/IlmImf/ImfZip.cpp",
		"Source/OpenEXR/IlmImf/ImfZipCompressor.cpp",
		
		"Source/OpenEXR/IlmThread/*.h",
		"Source/OpenEXR/IlmThread/IlmThread.cpp",
		"Source/OpenEXR/IlmThread/IlmThreadMutex.cpp",
		"Source/OpenEXR/IlmThread/IlmThreadPool.cpp",
		"Source/OpenEXR/IlmThread/IlmThreadSemaphore.cpp",
		
		"Source/OpenEXR/Imath/*.h",
		"Source/OpenEXR/Imath/ImathBox.cpp",
		"Source/OpenEXR/Imath/ImathColorAlgo.cpp",
		"Source/OpenEXR/Imath/ImathFun.cpp",
		"Source/OpenEXR/Imath/ImathMatrixAlgo.cpp",
		"Source/OpenEXR/Imath/ImathRandom.cpp",
		"Source/OpenEXR/Imath/ImathShear.cpp",
		"Source/OpenEXR/Imath/ImathVec.cpp",
		
		"Source/OpenEXR/IexMath/IexMathFloatExc.h",
		"Source/OpenEXR/IexMath/IexMathIeeeExc.h",
		"Source/OpenEXR/IexMath/IexMathFloatExc.cpp",
		"Source/OpenEXR/IexMath/IexMathFpu.cpp",
    }
	
	removefiles
	{
		"Source/OpenEXR/IlmThread/IlmThreadMutexPosix.cpp",
		"Source/OpenEXR/IlmThread/IlmThreadMutexWin32.cpp",
		"Source/OpenEXR/IlmThread/IlmThreadSemaphorePosix.cpp",
		"Source/OpenEXR/IlmThread/IlmThreadSemaphorePosixCompat.cpp",
		"Source/OpenEXR/IlmThread/IlmThreadSemaphoreWin32.cpp",
		"Source/OpenEXR/IlmThread/IlmThreadWin32.cpp",
	}
	
	links
	{
		"ZLib",
	}
	
	defines
	{
		"WIN32",
		"WIN32_LEAN_AND_MEAN",
		"VC_EXTRALEAN",
		"FIP_EXPORTS",
		"FREEIMAGE_LIB",
		"_LIB",
		"_CRT_SECURE_NO_DEPRECATE"
	}

    includedirs
    {
		"Source/OpenEXR",
		"Source/OpenEXR/Half",
		"Source/OpenEXR/Imath",
		"Source/OpenEXR/Iex",
		"Source/OpenEXR/IexMath",
		"Source/OpenEXR/IlmImf",
		"Source/OpenEXR/IlmThread",
		"Source/ZLib",
    }
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
		
project "LibTIFF4"
	kind "StaticLib"
	language "c"
	staticruntime "off"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"Source/LibTIFF4/*.h",
		"Source/LibTIFF4/*.c",
    }
	
	removefiles
	{
		"Source/LibTIFF4/tif_config.vc.h",
		"Source/LibTIFF4/tif_config.wince.h",
		
		"Source/LibTIFF4/tifconf.vc.h",
		"Source/LibTIFF4/tifconf.wince.h",
	
		"Source/LibTIFF4/mkg3states.c",
		"Source/LibTIFF4/mkspans.c",
		
		"Source/LibTIFF4/tif_acorn.c",
		"Source/LibTIFF4/tif_atari.c",
		"Source/LibTIFF4/tif_apple.c",
		"Source/LibTIFF4/tif_msdos.c",
		"Source/LibTIFF4/tif_unix.c",
		"Source/LibTIFF4/tif_vms.c",
		"Source/LibTIFF4/tif_wince.c",
		"Source/LibTIFF4/tif_win3.c",
		"Source/LibTIFF4/tif_win32.c",
		
		"Source/LibTIFF4/tif_jbig.c",
		"Source/LibTIFF4/tif_jpeg_12.c",
	}
	
	defines
	{
		"WIN32",
		"_LIB",
	}

    includedirs
    {
		"Source/LibTIFF4",
		"Source/LibJPEG",
		"Source/ZLib",
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
		
		
project "LibPNG"
	kind "StaticLib"
	language "c"
	staticruntime "off"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"Source/LibPNG/*.h",
		"Source/LibPNG/*.c",
    }
	
	removefiles
	{
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
		"Source/LibPNG",
		"Source/ZLib",
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
		
		
project "LibOpenJPEG"
	kind "StaticLib"
	language "c"
	staticruntime "off"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"Source/LibOpenJPEG/*.h",
		"Source/LibOpenJPEG/*.c",
    }
	
	removefiles
	{
		"Source/LibOpenJPEG/t1_generate_luts.c",
		"Source/LibOpenJPEG/cidx_manager.h",
		"Source/LibOpenJPEG/opj_codec.h",
		
		"Source/LibOpenJPEG/cidx_manager.c",
		"Source/LibOpenJPEG/phix_manager.c",
		"Source/LibOpenJPEG/ppix_manager.c",
		"Source/LibOpenJPEG/t1_generate_luts.c",
		"Source/LibOpenJPEG/thix_manager.c",
		"Source/LibOpenJPEG/tpix_manager.c",
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
		"Source/LibOpenJPEG",
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
		
		
project "LibJPEG"
	kind "StaticLib"
	language "c"
	staticruntime "off"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"Source/LibJPEG/*.h",
		"Source/LibJPEG/*.c",
    }
	
	removefiles
	{
		"Source/LibJPEG/ansi2knr.c",
		"Source/LibJPEG/cderror.h",
		"Source/LibJPEG/cdjpeg.h",
		"Source/LibJPEG/cdjpeg.c",
		"Source/LibJPEG/cjpeg.c",
		"Source/LibJPEG/ckconfig.c",
		"Source/LibJPEG/djpeg.c",
		"Source/LibJPEG/example.c",
		"Source/LibJPEG/jmemdos.c",
		"Source/LibJPEG/jmemmac.c",
		"Source/LibJPEG/jmemname.c",
		"Source/LibJPEG/rd*.c",
		"Source/LibJPEG/rw*.c",

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
		"Source/LibJPEG",
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
		
project "LibRaw"
	kind "StaticLib"
	language "c++"
	staticruntime "off"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"Source/LibRawLite/libraw/*.h",
		"Source/LibRawLite/src/*.cpp",

		"Source/LibRawLite/internal/*.h",
		"Source/LibRawLite/internal/dcraw_common.cpp",
		"Source/LibRawLite/internal/demosaic_packs.cpp",
    }
	
	removefiles
	{
		"Source/LibRawLite/src/libraw_fuji_compressed.cpp",
		"Source/LibRawLite/src/libraw_xtrans_compressed.cpp",
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
		"Source/LibRawLite",
		"Source/ZLib",
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
		
project "LibJXR"
	kind "StaticLib"
	language "c"
	staticruntime "off"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"Source/LibJXR/common/include/*.h",
		"Source/LibJXR/image/**.h",
		"Source/LibJXR/image/**.c",
		"Source/LibJXR/jxrgluelib/*.h",
		"Source/LibJXR/jxrgluelib/*.c",
    }
	
	removefiles
	{
		"Source/image/sys/prefTimerANSI.c"
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
		"Source/LibJXR/image/sys",
		"Source/LibJXR/jxrgluelib",
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
		
		
project "LibWebP"
	kind "StaticLib"
	language "c"
	staticruntime "off"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"Source/LibWebP/**.h",
		"Source/LibWebP/**.c",
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
		"Source/LibWebP",
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