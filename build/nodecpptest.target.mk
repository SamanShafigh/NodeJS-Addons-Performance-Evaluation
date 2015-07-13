# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := nodecpptest
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=nodecpptest' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-pthread \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions

INCS_Debug := \
	-I/home/saman/.node-gyp/0.10.32/src \
	-I/home/saman/.node-gyp/0.10.32/deps/uv/include \
	-I/home/saman/.node-gyp/0.10.32/deps/v8/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=nodecpptest' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-pthread \
	-m64 \
	-O2 \
	-fno-strict-aliasing \
	-fno-tree-vrp \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions

INCS_Release := \
	-I/home/saman/.node-gyp/0.10.32/src \
	-I/home/saman/.node-gyp/0.10.32/deps/uv/include \
	-I/home/saman/.node-gyp/0.10.32/deps/v8/include

OBJS := \
	$(obj).target/$(TARGET)/main.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

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

$(obj).target/nodecpptest.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/nodecpptest.node: LIBS := $(LIBS)
$(obj).target/nodecpptest.node: TOOLSET := $(TOOLSET)
$(obj).target/nodecpptest.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/nodecpptest.node
# Add target alias
.PHONY: nodecpptest
nodecpptest: $(builddir)/nodecpptest.node

# Copy this to the executable output path.
$(builddir)/nodecpptest.node: TOOLSET := $(TOOLSET)
$(builddir)/nodecpptest.node: $(obj).target/nodecpptest.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/nodecpptest.node
# Short alias for building this executable.
.PHONY: nodecpptest.node
nodecpptest.node: $(obj).target/nodecpptest.node $(builddir)/nodecpptest.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/nodecpptest.node

