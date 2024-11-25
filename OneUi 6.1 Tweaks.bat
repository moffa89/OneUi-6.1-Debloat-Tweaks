@echo off
@echo Samsung OneUi 6.1 Tweaks Script by moffa89
@echo =============================================

echo Checking connected devices
adb devices

echo Dim Screen, Disable Direct Share, Smart Capture and Quickshare
adb shell settings put system dim_screen 1
adb shell settings put system direct_share 0
adb shell settings put system enable_smart_capture 0
adb shell settings put system quickshare_enabled 0

echo Gestures
adb shell settings put global enable_back_animation 1
adb shell settings put global ambient_enabled 0
adb shell settings put global ambient_tilt_to_wake 0
adb shell settings put global ambient_touch_to_wake 0
adb shell settings put secure aware_enabled 0
adb shell settings put secure volume_hush_gesture 0
adb shell settings put secure wake_gesture_enabled 0

echo Disable S-Cloud Wifi Sync
adb shell settings put global scloud_wifi_sync_enabled 0

echo Protect Battery
adb shell settings put global protect_battery 1

echo Location Tweaks
adb shell settings put global assisted_gps_enabled 1
adb shell settings put global wifi_scan_always_enabled 1

echo Boost Performance
adb shell settings put global ram_expand_size 0
adb shell settings put global zram_enabled 0
adb shell settings put global bug_report 0
adb shell settings put global debug_app 0

echo Screen Auto Brightness
adb shell settings put system screen_auto_brightness_adj 0.0

echo Improving Mobile Networking Performance
adb shell settings put global network_recommendations_enabled 0
adb shell settings put global network_scoring_ui_enabled 0
adb shell settings put global tether_offload_disabled 1
adb shell settings put global enable_cellular_on_boot 1
adb shell settings put global mobile_data_always_on 0

echo Improving Power Management on Phones
adb shell settings put global sem_enhanced_cpu_responsiveness 0
adb shell settings put global enhanced_processing 0
adb shell settings put global app_standby_enabled 1
adb shell settings put global adaptive_battery_management_enabled 0
adb shell settings put global app_restriction_enabled true
adb shell settings put global automatic_power_save_mode 0

echo Disable Android Power Saver Mode
adb shell settings put global low_power 0
adb shell settings put global dynamic_power_savings_enabled 0
adb shell settings put global dynamic_power_savings_disable_threshold 20

echo Disabling Android Screen Saver to get better Battery Life
adb shell settings put secure screensaver_enabled 0
adb shell settings put secure screensaver_activate_on_sleep 0
adb shell settings put secure screensaver_activate_on_dock 0

echo Add Volume in Call
adb shell settings put system call_extra_volume 1

echo Add Noice Reduction on Calls
adb shell settings put system call_noise_reduction 1

echo Disabling In-Answer Call Vibration
adb shell settings put system call_answer_vib 0

echo Disabling End Call Vibration
adb shell settings put system call_end_vib 0

echo Disabling Swipe to Call-Message from Samsung Contacts App
adb shell settings put global swipe_to_call_message 0

echo Navigation Vibrations
adb shell settings put system navigation_gestures_vibrate 0

echo Lock Screen Sounds
adb shell settings put system lockscreen_sounds_enabled 0

echo Camera Vibration-Sounds
adb shell settings put system camera_feedback_vibrate 0
adb shell settings put system sound_effects_enabled 0

echo Enable Sync Vibration with Ringtone
adb shell settings put system sync_vibration_with_ringtone 1
adb shell settings put system sync_vibration_with_ringtone_2 1

echo Enable Sync Vibration with Notification
adb shell settings put system sync_vibration_with_notification 1

echo Vibration in General
adb shell settings put system haptic_feedback_enabled 0
adb shell settings put system SEM_VIBRATION_FORCE_TOUCH_INTENSITY 0
adb shell settings put system SEM_VIBRATION_NOTIFICATION_INTENSITY 5
adb shell settings put system SEM_VIBRATION_RING_INTENSITY 5
adb shell settings put system vibrate_when_ringing 1
adb shell settings put system vibration_sound_enabled 0
adb shell settings put system VIB_FEEDBACK_MAGNITUDE 0
adb shell settings put system VIB_RECVCALL_MAGNITUDE 5

echo Power Sounds
adb shell settings put global power_sounds_enabled 0

echo Charging Vibration/Sounds
adb shell settings put secure charging_vibration_enabled 0
adb shell settings put secure charging_sounds_enabled 0
adb shell settings put secure adaptive_charging_enabled 0

echo Bluetooth Audio Codecs
adb shell settings put secure bluetooth_a2dp_bt_uhq_state 1
adb shell settings put secure bluetooth_a2dp_uhqa_support 1

echo Disabling Google Features
adb shell settings put system gearhead:driving_mode_settings_enabled 0
adb shell settings put secure assistant 0
adb shell settings put secure smartspace 0
adb shell settings put global google_core_control 0
adb shell settings put secure adaptive_connectivity_enabled 0
adb shell settings put secure systemui.google.opa_enabled 0

echo Disable Android's Motion Engine Sensor
adb shell settings put system master_motion 0
adb shell settings put system motion_engine 0
adb shell settings put system air_motion_engine 0
adb shell settings put system air_motion_wake_up 0

echo Disable Smart Stay Samsung-Google
adb shell settings put system intelligent_sleep_mode 0
adb shell settings put secure adaptive_sleep 0

echo Improve app launch times for Samsung Phones
adb shell settings put global activity_starts_logging_enabled 0
adb shell settings put secure send_action_app_error 0
adb shell settings put global bixby_pregranted_permissions 0
adb shell settings put system send_security_reports 0
adb shell settings put system rakuten_denwa 0

echo Audio Quality Improving in phones
adb shell settings put system tube_amp_effect 1
adb shell settings put system k2hd_effect 1

echo Enable Multimedia Packet Scheduler
adb shell settings put system multicore_packet_scheduler 1

echo Killing Game Optimizing Service
adb shell settings put secure game_auto_temperature_control 0
adb shell pm clear --user 0 com.samsung.android.game.gos
adb shell settings put secure gamesdk_version 0
adb shell settings put secure game_home_enable 0
adb shell settings put secure game_bixby_block 0

echo Block Galaxy System Updates (not interference with Galaxy Store Update or with F/OTA Updates)
adb shell settings put global galaxy_system_update_block 1

echo OLED Screen Tweak
adb shell settings put global burn_in_protection 1

echo Improve Touchscreen Responsiness and Latency on Android Phones
adb shell settings put secure tap_duration_threshold 0.0
adb shell settings put secure touch_blocking_period 0.0

echo Disable Background Scanning for Devices (Bluetooth, Nearby Devices)
adb shell settings put system nearby_scanning_permission_allowed 0
adb shell settings put system nearby_scanning_enabled 0
adb shell settings put global ble_scan_always_enabled 0

echo Disable hotword detection (OK Google, or Hey Google) in-background detection (improves battery)
adb shell settings put global hotword_detection_enabled 0

echo Samsung Cross-Device Sync
adb shell settings put system mcf_continuity 0
adb shell settings put system mcf_continuity_permission_denied 1
adb shell settings put system mcf_permission_denied 1

echo Refresh phone commands (these helps to refresh phone apps by a bit of boost)
adb shell cmd package compile -m speed-profile -a
adb shell cmd package bg-dexopt-job
adb shell pm trim-caches 999999999999999999

echo Completed Action
echo Killing adb server
adb kill-server
echo Press any key to exit terminal.
pause
