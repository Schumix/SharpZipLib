
EXTRA_DIST =  

# Warning: This is an automatically generated file, do not edit!

if ENABLE_DEBUG
ASSEMBLY_COMPILER_COMMAND = dmcs
ASSEMBLY_COMPILER_FLAGS =  -noconfig -codepage:utf8 -warn:4 -optimize- -debug -define:DEBUG
ASSEMBLY = bin/Debug/SharpZipLibTests.dll
ASSEMBLY_MDB = $(ASSEMBLY).mdb
COMPILE_TARGET = library
PROJECT_REFERENCES =  \
	../bin/Debug/ICSharpCode.SharpZipLib.dll
BUILD_DIR = bin/Debug/

SHARPZIPLIBTESTS_DLL_MDB_SOURCE=bin/Debug/SharpZipLibTests.dll.mdb
SHARPZIPLIBTESTS_DLL_MDB=$(BUILD_DIR)/SharpZipLibTests.dll.mdb
ICSHARPCODE_SHARPZIPLIB_DLL_SOURCE=../bin/Debug/ICSharpCode.SharpZipLib.dll
ICSHARPCODE_SHARPZIPLIB_DLL_MDB_SOURCE=../bin/Debug/ICSharpCode.SharpZipLib.dll.mdb
ICSHARPCODE_SHARPZIPLIB_DLL_MDB=$(BUILD_DIR)/ICSharpCode.SharpZipLib.dll.mdb

endif

if ENABLE_RELEASE
ASSEMBLY_COMPILER_COMMAND = dmcs
ASSEMBLY_COMPILER_FLAGS =  -noconfig -codepage:utf8 -warn:4 -optimize+ "-nowarn:219"
ASSEMBLY = bin/Release/SharpZipLibTests.dll
ASSEMBLY_MDB = 
COMPILE_TARGET = library
PROJECT_REFERENCES =  \
	../bin/Release/ICSharpCode.SharpZipLib.dll
BUILD_DIR = bin/Release/

SHARPZIPLIBTESTS_DLL_MDB=
ICSHARPCODE_SHARPZIPLIB_DLL_SOURCE=../bin/Release/ICSharpCode.SharpZipLib.dll
ICSHARPCODE_SHARPZIPLIB_DLL_MDB=

endif

AL=al
SATELLITE_ASSEMBLY_NAME=$(notdir $(basename $(ASSEMBLY))).resources.dll

PROGRAMFILES = \
	$(SHARPZIPLIBTESTS_DLL_MDB) \
	$(ICSHARPCODE_SHARPZIPLIB_DLL) \
	$(ICSHARPCODE_SHARPZIPLIB_DLL_MDB)  

LINUX_PKGCONFIG = \
	$(SHARPZIPLIBTESTS_PC)  


RESGEN=resgen2
	
all: $(ASSEMBLY) $(PROGRAMFILES) $(LINUX_PKGCONFIG) 

FILES = \
	AssemblyInfo.cs \
	Core/Core.cs \
	TestSupport/RingBuffer.cs \
	TestSupport/Streams.cs \
	TestSupport/Utils.cs \
	TestSupport/ZipTesting.cs \
	Zip/ZipTests.cs \
	BZip2/Bzip2Tests.cs \
	GZip/GZipTests.cs \
	Tar/TarTests.cs \
	Base/InflaterDeflaterTests.cs 

DATA_FILES = 

RESOURCES = 

EXTRAS = \
	sharpziplibtests.pc.in 

REFERENCES =  \
	System \
	System.Data \
	System.Xml \
	$(MONO_NUNIT_LIBS)

DLL_REFERENCES = 

CLEANFILES = $(PROGRAMFILES) $(LINUX_PKGCONFIG) 

include $(top_srcdir)/Makefile.include

ICSHARPCODE_SHARPZIPLIB_DLL = $(BUILD_DIR)/ICSharpCode.SharpZipLib.dll
SHARPZIPLIBTESTS_PC = $(BUILD_DIR)/sharpziplibtests.pc

$(eval $(call emit-deploy-target,ICSHARPCODE_SHARPZIPLIB_DLL))
$(eval $(call emit-deploy-target,ICSHARPCODE_SHARPZIPLIB_DLL_MDB))
$(eval $(call emit-deploy-wrapper,SHARPZIPLIBTESTS_PC,sharpziplibtests.pc))


$(eval $(call emit_resgen_targets))
$(build_xamlg_list): %.xaml.g.cs: %.xaml
	xamlg '$<'

$(ASSEMBLY_MDB): $(ASSEMBLY)

$(ASSEMBLY): $(build_sources) $(build_resources) $(build_datafiles) $(DLL_REFERENCES) $(PROJECT_REFERENCES) $(build_xamlg_list) $(build_satellite_assembly_list)
	mkdir -p $(shell dirname $(ASSEMBLY))
	$(ASSEMBLY_COMPILER_COMMAND) $(ASSEMBLY_COMPILER_FLAGS) -out:$(ASSEMBLY) -target:$(COMPILE_TARGET) $(build_sources_embed) $(build_resources_embed) $(build_references_ref)
