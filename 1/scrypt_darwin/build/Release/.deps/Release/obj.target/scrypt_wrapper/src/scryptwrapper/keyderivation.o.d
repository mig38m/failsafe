cmd_Release/obj.target/scrypt_wrapper/src/scryptwrapper/keyderivation.o := cc '-DNODE_GYP_MODULE_NAME=scrypt_wrapper' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_DARWIN_USE_64_BIT_INODE=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DHAVE_CONFIG_H' -I/Users/homakov/.node-gyp/8.9.1/include/node -I/Users/homakov/.node-gyp/8.9.1/src -I/Users/homakov/.node-gyp/8.9.1/deps/uv/include -I/Users/homakov/.node-gyp/8.9.1/deps/v8/include -I../src/scryptwrapper/inc -I../src -I../scrypt/scrypt-1.2.0/libcperciva/alg -I../scrypt/scrypt-1.2.0/libcperciva/util -I../scrypt/scrypt-1.2.0/lib/crypto -I../scrypt/scrypt-1.2.0/lib/util -I../scrypt/scrypt-1.2.0/lib/scryptenc  -Os -gdwarf-2 -mmacosx-version-min=10.7 -arch x86_64 -Wall -Wendif-labels -W -Wno-unused-parameter -fno-strict-aliasing -MMD -MF ./Release/.deps/Release/obj.target/scrypt_wrapper/src/scryptwrapper/keyderivation.o.d.raw   -c -o Release/obj.target/scrypt_wrapper/src/scryptwrapper/keyderivation.o ../src/scryptwrapper/keyderivation.c
Release/obj.target/scrypt_wrapper/src/scryptwrapper/keyderivation.o: \
  ../src/scryptwrapper/keyderivation.c \
  ../scrypt/scrypt-1.2.0/libcperciva/alg/sha256.h \
  ../src/scryptwrapper/inc/hash.h ../src/scryptwrapper/inc/pickparams.h \
  ../scrypt/scrypt-1.2.0/libcperciva/util/sysendian.h
../src/scryptwrapper/keyderivation.c:
../scrypt/scrypt-1.2.0/libcperciva/alg/sha256.h:
../src/scryptwrapper/inc/hash.h:
../src/scryptwrapper/inc/pickparams.h:
../scrypt/scrypt-1.2.0/libcperciva/util/sysendian.h:
