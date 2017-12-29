# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := scrypt_lib
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=scrypt_lib' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DHAVE_CONFIG_H' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Debug := \
	-I/root/.node-gyp/9.3.0/include/node \
	-I/root/.node-gyp/9.3.0/src \
	-I/root/.node-gyp/9.3.0/deps/uv/include \
	-I/root/.node-gyp/9.3.0/deps/v8/include \
	-I$(srcdir)/scrypt/scrypt-1.2.0 \
	-I$(srcdir)/scrypt/scrypt-1.2.0/libcperciva/cpusupport \
	-I$(srcdir)/scrypt/scrypt-1.2.0/libcperciva/alg \
	-I$(srcdir)/scrypt/scrypt-1.2.0/libcperciva/util \
	-I$(srcdir)/scrypt/scrypt-1.2.0/lib/crypto

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=scrypt_lib' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DHAVE_CONFIG_H'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Release := \
	-I/root/.node-gyp/9.3.0/include/node \
	-I/root/.node-gyp/9.3.0/src \
	-I/root/.node-gyp/9.3.0/deps/uv/include \
	-I/root/.node-gyp/9.3.0/deps/v8/include \
	-I$(srcdir)/scrypt/scrypt-1.2.0 \
	-I$(srcdir)/scrypt/scrypt-1.2.0/libcperciva/cpusupport \
	-I$(srcdir)/scrypt/scrypt-1.2.0/libcperciva/alg \
	-I$(srcdir)/scrypt/scrypt-1.2.0/libcperciva/util \
	-I$(srcdir)/scrypt/scrypt-1.2.0/lib/crypto

OBJS := \
	$(obj).target/$(TARGET)/scrypt/scrypt-1.2.0/lib/crypto/crypto_scrypt.o \
	$(obj).target/$(TARGET)/scrypt/scrypt-1.2.0/lib/crypto/crypto_scrypt_smix.o \
	$(obj).target/$(TARGET)/scrypt/scrypt-1.2.0/libcperciva/util/warnp.o \
	$(obj).target/$(TARGET)/scrypt/scrypt-1.2.0/libcperciva/alg/sha256.o \
	$(obj).target/$(TARGET)/scrypt/scrypt-1.2.0/libcperciva/util/insecure_memzero.o \
	$(obj).target/$(TARGET)/scrypt/scrypt-1.2.0/lib/scryptenc/scryptenc_cpuperf.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/copied_files.node

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/scrypt_lib.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/scrypt_lib.a: LIBS := $(LIBS)
$(obj).target/scrypt_lib.a: TOOLSET := $(TOOLSET)
$(obj).target/scrypt_lib.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/scrypt_lib.a
# Add target alias
.PHONY: scrypt_lib
scrypt_lib: $(obj).target/scrypt_lib.a

# Add target alias to "all" target.
.PHONY: all
all: scrypt_lib

# Add target alias
.PHONY: scrypt_lib
scrypt_lib: $(builddir)/scrypt_lib.a

# Copy this to the static library output path.
$(builddir)/scrypt_lib.a: TOOLSET := $(TOOLSET)
$(builddir)/scrypt_lib.a: $(obj).target/scrypt_lib.a FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/scrypt_lib.a
# Short alias for building this static library.
.PHONY: scrypt_lib.a
scrypt_lib.a: $(obj).target/scrypt_lib.a $(builddir)/scrypt_lib.a

# Add static library to "all" target.
.PHONY: all
all: $(builddir)/scrypt_lib.a

