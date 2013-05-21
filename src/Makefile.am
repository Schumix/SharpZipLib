
EXTRA_DIST =  

# Warning: This is an automatically generated file, do not edit!

if ENABLE_DEBUG
ASSEMBLY_COMPILER_COMMAND = dmcs
ASSEMBLY_COMPILER_FLAGS =  -noconfig -codepage:utf8 -warn:4 -optimize- "-nowarn:219" -debug -define:DEBUG
ASSEMBLY = ../bin/ICSharpCode.SharpZipLib.dll
ASSEMBLY_MDB = $(ASSEMBLY).mdb
COMPILE_TARGET = library
PROJECT_REFERENCES = 
BUILD_DIR = ../bin/

ICSHARPCODE_SHARPZIPLIB_DLL_MDB_SOURCE=../bin/ICSharpCode.SharpZipLib.dll.mdb
ICSHARPCODE_SHARPZIPLIB_DLL_MDB=$(BUILD_DIR)/ICSharpCode.SharpZipLib.dll.mdb

endif

if ENABLE_RELEASE
ASSEMBLY_COMPILER_COMMAND = dmcs
ASSEMBLY_COMPILER_FLAGS =  -noconfig -codepage:utf8 -warn:4 -optimize+ "-nowarn:219"
ASSEMBLY = ../bin/ICSharpCode.SharpZipLib.dll
ASSEMBLY_MDB = 
COMPILE_TARGET = library
PROJECT_REFERENCES = 
BUILD_DIR = ../bin/

ICSHARPCODE_SHARPZIPLIB_DLL_MDB=

endif

AL=al
SATELLITE_ASSEMBLY_NAME=$(notdir $(basename $(ASSEMBLY))).resources.dll

PROGRAMFILES = \
	$(ICSHARPCODE_SHARPZIPLIB_DLL_MDB)  

LINUX_PKGCONFIG = \
	$(ICSHARPCODE_SHARPZLIB_PC)  


RESGEN=resgen2
	
all: $(ASSEMBLY) $(PROGRAMFILES) $(LINUX_PKGCONFIG) 

FILES = \
	Core/WindowsPathUtils.cs \
	Encryption/ZipAESStream.cs \
	Encryption/ZipAESTransform.cs \
	Main.cs \
	AssemblyInfo.cs \
	Checksums/IChecksum.cs \
	Checksums/Adler32.cs \
	Checksums/CRC32.cs \
	Zip/WindowsNameTransform.cs \
	Zip/ZipEntry.cs \
	Zip/ZipInputStream.cs \
	Zip/ZipOutputStream.cs \
	Zip/ZipConstants.cs \
	Zip/ZipFile.cs \
	GZip/GzipOutputStream.cs \
	GZip/GzipInputStream.cs \
	GZip/GZIPConstants.cs \
	Zip/ZipException.cs \
	BZip2/BZip2InputStream.cs \
	BZip2/BZip2OutputStream.cs \
	BZip2/BZip2Constants.cs \
	BZip2/BZip2.cs \
	Checksums/StrangeCRC.cs \
	Tar/TarEntry.cs \
	Tar/TarHeader.cs \
	Tar/TarBuffer.cs \
	Tar/TarOutputStream.cs \
	Tar/InvalidHeaderException.cs \
	Tar/TarInputStream.cs \
	Tar/TarArchive.cs \
	Zip/Compression/PendingBuffer.cs \
	Zip/Compression/InflaterDynHeader.cs \
	Zip/Compression/InflaterHuffmanTree.cs \
	Zip/Compression/DeflaterPending.cs \
	Zip/Compression/DeflaterHuffman.cs \
	Zip/Compression/DeflaterEngine.cs \
	Zip/Compression/Inflater.cs \
	Zip/Compression/DeflaterConstants.cs \
	Zip/Compression/Deflater.cs \
	Zip/Compression/Streams/DeflaterOutputStream.cs \
	Zip/Compression/Streams/InflaterInputStream.cs \
	Zip/Compression/Streams/StreamManipulator.cs \
	Zip/Compression/Streams/OutputWindow.cs \
	SharpZipBaseException.cs \
	Tar/TarException.cs \
	GZip/GZipException.cs \
	BZip2/BZip2Exception.cs \
	Core/NameFilter.cs \
	Zip/FastZip.cs \
	Core/FileSystemScanner.cs \
	Core/PathFilter.cs \
	Core/INameTransform.cs \
	Zip/ZipNameTransform.cs \
	Encryption/PkzipClassic.cs \
	Core/IScanFilter.cs \
	Zip/ZipHelperStream.cs \
	Zip/ZipExtraData.cs \
	Core/StreamUtils.cs \
	Zip/ZipEntryFactory.cs \
	Zip/IEntryFactory.cs 

DATA_FILES = 

RESOURCES = 

EXTRAS = \
	icsharpcode.sharpzlib.pc.in 

REFERENCES =  \
	System

DLL_REFERENCES = 

CLEANFILES = $(PROGRAMFILES) $(LINUX_PKGCONFIG) 

include $(top_srcdir)/Makefile.include

ICSHARPCODE_SHARPZLIB_PC = $(BUILD_DIR)/icsharpcode.sharpzlib.pc

$(eval $(call emit-deploy-wrapper,ICSHARPCODE_SHARPZLIB_PC,icsharpcode.sharpzlib.pc))


$(eval $(call emit_resgen_targets))
$(build_xamlg_list): %.xaml.g.cs: %.xaml
	xamlg '$<'

$(ASSEMBLY_MDB): $(ASSEMBLY)

$(ASSEMBLY): $(build_sources) $(build_resources) $(build_datafiles) $(DLL_REFERENCES) $(PROJECT_REFERENCES) $(build_xamlg_list) $(build_satellite_assembly_list)
	mkdir -p $(shell dirname $(ASSEMBLY))
	$(ASSEMBLY_COMPILER_COMMAND) $(ASSEMBLY_COMPILER_FLAGS) -out:$(ASSEMBLY) -target:$(COMPILE_TARGET) $(build_sources_embed) $(build_resources_embed) $(build_references_ref)
