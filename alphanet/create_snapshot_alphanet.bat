#!/bin/bash
del /f /q /s "snapshots\alphanet1\full_export.bin"
del /f /q /s "snapshots\alphanet1\delta_export.bin"
del /f /q /s "snapshots\alphanet2\full_export.bin"
del /f /q /s "snapshots\alphanet2\delta_export.bin"
del /f /q /s "snapshots\alphanet3\full_export.bin"
del /f /q /s "snapshots\alphanet3\delta_export.bin"
del /f /q /s "snapshots\alphanet4\full_export.bin"
del /f /q /s "snapshots\alphanet4\delta_export.bin"
mkdir "snapshots\alphanet1\"
mkdir "snapshots\alphanet2\"
mkdir "snapshots\alphanet3\"
mkdir "snapshots\alphanet4\"
go run "..\main.go" tool snapgen alphanet1 96f9de0989e77d0e150e850a5a600e83045fa57419eaf3b20225b763d4e23813 "snapshots\alphanet1\full_export.bin"
copy "snapshots\alphanet1\full_export.bin" "snapshots\alphanet2\"
copy "snapshots\alphanet1\full_export.bin" "snapshots\alphanet3\"
copy "snapshots\alphanet1\full_export.bin" "snapshots\alphanet4\"
