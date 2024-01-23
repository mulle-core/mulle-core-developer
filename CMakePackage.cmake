#
# CPack and project specific stuff
#
######

set( CPACK_PACKAGE_NAME "${PROJECT_NAME}")
set( CPACK_PACKAGE_VERSION "${PROJECT_VERSION}")
set( CPACK_PACKAGE_CONTACT "nat@mulle-kybernetik.de")
set( CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_SOURCE_DIR}/README.md")
set( CPACK_PACKAGE_DESCRIPTION_SUMMARY "🤠 mulle-core developer kit for mulle-sde")
set( CPACK_RESOURCE_FILE_LICENSE "${CMAKE_SOURCE_DIR}/LICENSE")
set( CPACK_STRIP_FILES false)


set( CPACK_DEBIAN_PACKAGE_HOMEPAGE "https://github.com/mulle-core/${PROJECT_NAME}")
set( CPACK_DEBIAN_PACKAGE_DEPENDS "mulle-c-developer")
set( CPACK_RPM_PACKAGE_VENDOR "mulle-core")
