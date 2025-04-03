gnome-terminal --title="roscore" -x bash -c "roscore"
# 暂停 2s，保证几个不同终端的启动顺序
sleep 2s;  

gnome-terminal --title="AndroidPhone" -x bash -c "cd /home/zjt/Desktop/android_imu/Android_Camera-IMU/; roslaunch android_cam-imu.launch"
sleep 2s;

gnome-terminal --title="ORB-SLAM2" -x bash -c "cd /home/zjt/Desktop/ORB-SLAM_ws/src/ORB_SLAM2/; rosrun ORB_SLAM2 Mono Vocabulary/ORBvoc.txt Examples/Monocular/AndroidPhone.yaml" 
"
 