
px4_add_board(
	VENDOR beaglebone
	MODEL blue
	LABEL cross
	PLATFORM posix
	ARCHITECTURE cortex-a8
	TOOLCHAIN arm-linux-gnueabihf
	TESTING

	DRIVERS
		#barometer # all available barometer drivers
		batt_smbus
		camera_trigger
		differential_pressure # all available differential pressure drivers
		distance_sensor # all available distance sensor drivers
		gps
		#imu # all available imu drivers
		#magnetometer # all available magnetometer drivers
		pwm_out_sim
		#telemetry # all available telemetry drivers
		vmount

		linux_gpio
		linux_pwm_out
		linux_sbus
		bbblue_adc

	DF_DRIVERS # NOTE: DriverFramework is migrating to intree PX4 drivers
		mpu9250
		bmp280

	MODULES
		attitude_estimator_q
		camera_feedback
		commander
		dataman
		ekf2
		events
		fw_att_control
		fw_pos_control_l1
		gnd_att_control
		gnd_pos_control
		land_detector
		landing_target_estimator
		load_mon
		local_position_estimator
		logger
		mavlink
		mc_att_control
		mc_pos_control
		navigator
		position_estimator_inav
		sensors
		#uavcan
		vtol_att_control
		wind_estimator

	SYSTEMCMDS
		esc_calib
		led_control
		mixer
		motor_ramp
		param
		perf
		pwm
		reboot
		sd_bench
		tests # tests and test runner
		top
		topic_listener
		tune_control
		ver

	EXAMPLES
		bottle_drop # OBC challenge
		fixedwing_control # Tutorial code from https://px4.io/dev/example_fixedwing_control
		hello
		#hwtest # Hardware test
		px4_mavlink_debug # Tutorial code from https://px4.io/dev/debug_values
		px4_simple_app # Tutorial code from https://px4.io/dev/px4_simple_app
		rover_steering_control # Rover example app
		segway
	)
