#include"ros/ros.h"
int main(int argc,char **argv)
{
    ros::init(argc,argv,"test04");
    ros::NodeHandle nh;
    nh.setParam("/turtlesim/background_r",255);
    nh.setParam("/turtlesim/background_g",0);
    nh.setParam("/turtlesim/background_b",0);
    return 0;
}