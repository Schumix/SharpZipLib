#!/bin/bash

xbuild /p:Configuration="Debug" Src/Newtonsoft.Json.Schumix.sln /flp:LogFile=xbuild.log;Verbosity=Detailed

#cd Run/Tests/Debug
#nunit-console Test.dll
