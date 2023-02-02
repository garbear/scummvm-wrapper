this_lib_available := no
ifeq ($(USE_SYSTEM_LIBS), 1)
this_lib_available := $(call sharedlibs_is_lib_available)
endif
$(call sharedlibs_system_lib_message)
ifeq ($(this_lib_available), yes)
LDFLAGS += $(this_lib_flags)
INCLUDES += $(sharedlibs_this_lib_includes)
endif
