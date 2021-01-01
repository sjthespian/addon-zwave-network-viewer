# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.4] - 2020-12-31
### Changed
- Upgraded to base image 8.0.6 to fix incompability between libssl/libcrypto and openssl-dev versions. Also force install of all three packages to get latest verion.

## [0.3] - 2020-10-27
### Added
- Added missing python modules for latest Z-Wave Network Viewer [\#1](https://github.com/sjthespian/addon-zwave-network-viewer/issues/1)
- Added and updated configuration settings to match updates to the viewer, including adding the HA url, a long-lived access token, ssl support and configuration of the debug parameter

### Changed
- Upgraded to version 8.0.5 of the addon base image

### Removed
- Ingress support. It will not work with SSL and was not working properly with the latest version of the viewer even with SSL disabled. The "Open Web UI" link will now open the viewer in a separate window or tab, and it is no longer an option to put it in the sidebar.

### Notes
- Unlike earlier versions of this addon, it now requires configuration due to changes in the [Z-Wave Network Vieweer][zwave-network-viewer] itself. See the [documentation](DOCS.md) for more information.

## [0.2] - 2020-07-31
### Added
- Ingress support

## [0.1] - 2020-07-31
### Added
- New add-on for Z-Wave Network Viewer
