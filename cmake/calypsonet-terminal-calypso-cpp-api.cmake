# *************************************************************************************************
# Copyright (c) 2023 Calypso Networks Association https://calypsonet.org/                         *
#                                                                                                 *
# See the NOTICE file(s) distributed with this work for additional information regarding          *
# copyright ownership.                                                                            *
#                                                                                                 *
# This program and the accompanying materials are made available under the terms of the Eclipse   *
# Public License 2.0 which is available at http://www.eclipse.org/legal/epl-2.0                   *
#                                                                                                 *
# SPDX-License-Identifier: EPL-2.0                                                                *
# *************************************************************************************************/

# Git
INCLUDE(FindGit)
FIND_PACKAGE(Git)
IF(NOT Git_FOUND)
	MESSAGE(FATAL_ERROR "Git not found!")
ENDIF()

# External Project
INCLUDE(FetchContent)

# Project
SET(EP_CALYPSONET_TERMINAL_CALYPSO "calypsonet-terminal-calypso-cpp-api")
SET(EP_VERSION "1.4.1")

FetchContent_Populate (
	${EP_CALYPSONET_TERMINAL_CALYPSO}

	GIT_REPOSITORY git@github.com:calypsonet/${EP_CALYPSONET_TERMINAL_CALYPSO}.git
	GIT_TAG        ${EP_VERSION}
	GIT_SHALLOW    ON
	SOURCE_DIR     ../externals/${EP_CALYPSONET_TERMINAL_CALYPSO}
	UPDATE_DISCONNECTED ON
)

ADD_SUBDIRECTORY(externals/${EP_CALYPSONET_TERMINAL_CALYPSO})
