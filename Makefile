# change with your version

NET_VERSION=v4.0.30319
CSC=C:\Windows\Microsoft.NET\Framework\$(NET_VERSION)\csc.exe

all: Library.dll Program.exe

Library.dll: Library.cs
	$(CSC) /nologo /target:library /out:Library.dll Library.cs

Program.exe: Program.cs Library.dll
	$(CSC) /nologo /target:exe /out:Program.exe Program.cs

run: Library.dll Program.exe
	@Program.exe

clean:
	@if [ -f Program.exe ]; then rm Program.exe; fi
	@if [ -f Library.dll ]; then rm Library.dll; fi

