include_guard(GLOBAL)


if (CONFIG_USE_BOARD_Project_Template_frdmrw612)
# Add set(CONFIG_USE_BOARD_Project_Template_frdmrw612 true) in config.cmake to use this component

message("BOARD_Project_Template_frdmrw612 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL frdmrw612) AND CONFIG_USE_component_usart_adapter AND (CONFIG_DEVICE_ID STREQUAL RW612) AND CONFIG_USE_device_RW612_startup AND CONFIG_USE_driver_cache_cache64 AND CONFIG_USE_driver_clock AND CONFIG_USE_driver_cns_io_mux AND CONFIG_USE_driver_common AND CONFIG_USE_driver_flash_config_frdmrw612 AND CONFIG_USE_driver_flexcomm_usart AND CONFIG_USE_driver_flexspi AND CONFIG_USE_driver_lpc_gpio AND CONFIG_USE_driver_power AND CONFIG_USE_driver_reset AND CONFIG_USE_driver_ocotp AND CONFIG_USE_component_els_pkc_platform_rw61x_standalone_clib_gdet_sensor AND ((CONFIG_USE_component_serial_manager AND CONFIG_USE_utility_assert AND CONFIG_USE_utility_debug_console) OR (CONFIG_USE_utility_assert_lite AND CONFIG_USE_utility_debug_console_lite)))

add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/board.h "" BOARD_Project_Template_frdmrw612)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/board.c "" BOARD_Project_Template_frdmrw612)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/clock_config.h ${CMAKE_CURRENT_LIST_DIR}/project_template/. BOARD_Project_Template_frdmrw612)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/clock_config.c "" BOARD_Project_Template_frdmrw612)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/pin_mux.h ${CMAKE_CURRENT_LIST_DIR}/project_template/. BOARD_Project_Template_frdmrw612)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/pin_mux.c "" BOARD_Project_Template_frdmrw612)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/peripherals.h ${CMAKE_CURRENT_LIST_DIR}/project_template/. BOARD_Project_Template_frdmrw612)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/peripherals.c "" BOARD_Project_Template_frdmrw612)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/project_template/.
)

if(CONFIG_USE_COMPONENT_CONFIGURATION)
  message("===>Import configuration from ${CMAKE_CURRENT_LIST_FILE}")

  target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC
    -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1
  )

endif()

else()

message(SEND_ERROR "BOARD_Project_Template_frdmrw612 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

