
SCRIPTS_DIR := scripts

CODEGEN_SCRIPT := $(SCRIPTS_DIR)/build_runner.sh
CLEAN_IOS_SCRIPT := $(SCRIPTS_DIR)/clean_ios.sh
CREATE_BLOCK_SCRIPT := $(SCRIPTS_DIR)/create_bloc.sh
CREATE_FEATURE_SCRIPT := $(SCRIPTS_DIR)/create_feature.sh
CREATE_SCREEN_SCRIPT := $(SCRIPTS_DIR)/create_screen.sh
FORMAT_SCRIPT := $(SCRIPTS_DIR)/format.sh
FVM_VSCODE_SCRIPT := $(SCRIPTS_DIR)/fvm_vscode.sh
INIT_APP_SCRIPT := $(SCRIPTS_DIR)/init_app.sh
INTL_SCRIPT := $(SCRIPTS_DIR)/intl_with_format.sh
PRECOMPILE_SVG_SCRIPT := $(SCRIPTS_DIR)/precompile_svg.sh
SPIDER_BUILD_SCRIPT := $(SCRIPTS_DIR)/spider_build.sh
VERSION_SCRIPT := $(SCRIPTS_DIR)/version.sh

# Tasks to run each script
codegen:
	sh $(CODEGEN_SCRIPT)

clean_ios:
	sh $(CLEAN_IOS_SCRIPT)

create_bloc:
	sh $(CREATE_BLOCK_SCRIPT)

create_feature:
	sh $(CREATE_FEATURE_SCRIPT)

create_screen:
	sh $(CREATE_SCREEN_SCRIPT)

format:
	sh $(FORMAT_SCRIPT)

fvm_vscode:
	sh $(FVM_VSCODE_SCRIPT)

init:
	sh $(INIT_APP_SCRIPT)

intl:
	sh $(INTL_SCRIPT)

precompile_svg:
	sh $(PRECOMPILE_SVG_SCRIPT)

spider_build:
	sh $(SPIDER_BUILD_SCRIPT)

version:
	sh $(VERSION_SCRIPT)
