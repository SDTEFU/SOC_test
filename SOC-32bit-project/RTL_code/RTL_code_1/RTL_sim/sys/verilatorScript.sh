 set -e ; verilator -CFLAGS -fPIC -CFLAGS -m64 -CFLAGS -shared -CFLAGS -Wno-attributes -LDFLAGS -fPIC -LDFLAGS -m64 -LDFLAGS -shared -LDFLAGS -Wno-attributes -CFLAGS -I"/home/adgert/.jdks/corretto-1.8.0_372/include" -CFLAGS -I"/home/adgert/.jdks/corretto-1.8.0_372/include/linux" -CFLAGS -fvisibility=hidden -LDFLAGS -fvisibility=hidden -CFLAGS -std=c++11 -LDFLAGS -std=c++11 --autoflush   --output-split 5000 --output-split-cfuncs 500 --output-split-ctrace 500 -Wno-WIDTH -Wno-UNOPTFLAT -Wno-CMPCONST -Wno-UNSIGNED --x-assign unique --x-initial-edge --trace-depth 0 -O3 -CFLAGS -O0 -CFLAGS -DTRACE --trace   --Mdir verilator --top-module sys  -cc "/home/adgert/Desktop/test/git-project/SOC_test/SOC-32bit-project/RTL_code/RTL_code_1/tmp/job_1/sys.v" --exe verilator/Vsys__spinalWrapper.cpp 