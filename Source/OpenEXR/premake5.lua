project "OpenEXR"
	kind "StaticLib"
	language "c++"
	staticruntime "off"
    
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"OpenEXRConfig.h",
		"ImlBaseConfig.h",
	
		"Half/half.h",
		"Half/eLut.h",
		"Half/half.h",
		"Half/halfFunction.h",
		"Half/halfLimits.h",
		"Half/toFloat.h",
		"Half/half.cpp",
		
		"Iex/*.h",
		"Iex/IexBaseExc.cpp",
		"Iex/IexThrowErrnoExc.cpp",
		
		"IlmImf/*.h",
		"IlmImf/b44ExpLogTable.cpp",
		"IlmImf/ImfAcesFile.cpp",
		"IlmImf/ImfAttribute.cpp",
		"IlmImf/ImfB44Compressor.cpp",
		"IlmImf/ImfBoxAttribute.cpp",
		"IlmImf/ImfChannelList.cpp",
		"IlmImf/ImfChannelListAttribute.cpp",
		"IlmImf/ImfChromaticities.cpp",
		"IlmImf/ImfChromaticitiesAttribute.cpp",
		"IlmImf/ImfCompositeDeepScanLine.cpp",
		"IlmImf/ImfCompressionAttribute.cpp",
		"IlmImf/ImfCompressor.cpp",
		"IlmImf/ImfConvert.cpp",
		"IlmImf/ImfCRgbaFile.cpp",
		"IlmImf/ImfDeepCompositing.cpp",
		"IlmImf/ImfDeepFrameBuffer.cpp",
		"IlmImf/ImfDeepImageStateAttribute.cpp",
		"IlmImf/ImfDeepScanLineInputFile.cpp",
		"IlmImf/ImfDeepScanLineInputPart.cpp",
		"IlmImf/ImfDeepScanLineOutputFile.cpp",
		"IlmImf/ImfDeepScanLineOutputPart.cpp",
		"IlmImf/ImfDeepTiledInputFile.cpp",
		"IlmImf/ImfDeepTiledInputPart.cpp",
		"IlmImf/ImfDeepTiledOutputFile.cpp",
		"IlmImf/ImfDeepTiledOutputPart.cpp",
		"IlmImf/ImfDoubleAttribute.cpp",
		"IlmImf/ImfDwaCompressor.cpp",
		"IlmImf/ImfEnvmap.cpp",
		"IlmImf/ImfEnvmapAttribute.cpp",
		"IlmImf/ImfFastHuf.cpp",
		"IlmImf/ImfFloatAttribute.cpp",
		"IlmImf/ImfFloatVectorAttribute.cpp",
		"IlmImf/ImfFrameBuffer.cpp",
		"IlmImf/ImfFramesPerSecond.cpp",
		"IlmImf/ImfGenericInputFile.cpp",
		"IlmImf/ImfGenericOutputFile.cpp",
		"IlmImf/ImfHeader.cpp",
		"IlmImf/ImfHuf.cpp",
		"IlmImf/ImfInputFile.cpp",
		"IlmImf/ImfInputPart.cpp",
		"IlmImf/ImfInputPartData.cpp",
		"IlmImf/ImfIntAttribute.cpp",
		"IlmImf/ImfIO.cpp",
		"IlmImf/ImfKeyCode.cpp",
		"IlmImf/ImfKeyCodeAttribute.cpp",
		"IlmImf/ImfLineOrderAttribute.cpp",
		"IlmImf/ImfLut.cpp",
		"IlmImf/ImfMatrixAttribute.cpp",
		"IlmImf/ImfMisc.cpp",
		"IlmImf/ImfMultiPartInputFile.cpp",
		"IlmImf/ImfMultiPartOutputFile.cpp",
		"IlmImf/ImfMultiView.cpp",
		"IlmImf/ImfOpaqueAttribute.cpp",
		"IlmImf/ImfOutputFile.cpp",
		"IlmImf/ImfOutputPart.cpp",
		"IlmImf/ImfOutputPartData.cpp",
		"IlmImf/ImfPartType.cpp",
		"IlmImf/ImfPizCompressor.cpp",
		"IlmImf/ImfPreviewImage.cpp",
		"IlmImf/ImfPreviewImageAttribute.cpp",
		"IlmImf/ImfPxr24Compressor.cpp",
		"IlmImf/ImfRational.cpp",
		"IlmImf/ImfRationalAttribute.cpp",
		"IlmImf/ImfRgbaFile.cpp",
		"IlmImf/ImfRgbaYca.cpp",
		"IlmImf/ImfRle.cpp",
		"IlmImf/ImfRleCompressor.cpp",
		"IlmImf/ImfScanLineInputFile.cpp",
		"IlmImf/ImfStandardAttributes.cpp",
		"IlmImf/ImfStdIO.cpp",
		"IlmImf/ImfStringAttribute.cpp",
		"IlmImf/ImfStringVectorAttribute.cpp",
		"IlmImf/ImfSystemSpecific.cpp",
		"IlmImf/ImfTestFile.cpp",
		"IlmImf/ImfThreading.cpp",
		"IlmImf/ImfTileDescriptionAttribute.cpp",
		"IlmImf/ImfTiledInputFile.cpp",
		"IlmImf/ImfTiledInputPart.cpp",
		"IlmImf/ImfTiledMisc.cpp",
		"IlmImf/ImfTiledOutputFile.cpp",
		"IlmImf/ImfTiledOutputPart.cpp",
		"IlmImf/ImfTiledRgbaFile.cpp",
		"IlmImf/ImfTileOffsets.cpp",
		"IlmImf/ImfTimeCode.cpp",
		"IlmImf/ImfTimeCodeAttribute.cpp",
		"IlmImf/ImfVecAttribute.cpp",
		"IlmImf/ImfVersion.cpp",
		"IlmImf/ImfWav.cpp",
		"IlmImf/ImfZip.cpp",
		"IlmImf/ImfZipCompressor.cpp",
		
		"IlmThread/*.h",
		"IlmThread/IlmThread.cpp",
		"IlmThread/IlmThreadMutex.cpp",
		"IlmThread/IlmThreadPool.cpp",
		"IlmThread/IlmThreadSemaphore.cpp",
		
		"Imath/*.h",
		"Imath/ImathBox.cpp",
		"Imath/ImathColorAlgo.cpp",
		"Imath/ImathFun.cpp",
		"Imath/ImathMatrixAlgo.cpp",
		"Imath/ImathRandom.cpp",
		"Imath/ImathShear.cpp",
		"Imath/ImathVec.cpp",
		
		"IexMath/IexMathFloatExc.h",
		"IexMath/IexMathIeeeExc.h",
		"IexMath/IexMathFloatExc.cpp",
		"IexMath/IexMathFpu.cpp",
    }
	
	removefiles
	{
		"IlmThread/IlmThreadMutexPosix.cpp",
		"IlmThread/IlmThreadMutexWin32.cpp",
		"IlmThread/IlmThreadSemaphorePosix.cpp",
		"IlmThread/IlmThreadSemaphorePosixCompat.cpp",
		"IlmThread/IlmThreadSemaphoreWin32.cpp",
		"IlmThread/IlmThreadWin32.cpp",
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
		".",
		"Half",
		"Imath",
		"Iex",
		"IexMath",
		"IlmImf",
		"IlmThread",
		"../ZLib",
    }
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"