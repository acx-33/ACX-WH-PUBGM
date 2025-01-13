#!/system/bin/sh
# post-fs-data.sh
ABI=$(getprop ro.product.cpu.abi)

if [ "$ABI" = "arm64-v8a" ]; then
  /system/lib64/my_module
elif [ "$ABI" = "armeabi-v7a" ]; then
  /system/lib/my_module
elif [ "$ABI" = "x86_64" ]; then
  /system/lib64/my_module
elif [ "$ABI" = "x86" ]; then
  /system/lib/my_module
else
  echo "Unsupported architecture"
fi
setenforce 0
