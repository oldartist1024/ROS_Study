#include"ros/ros.h"
int main(int argc,char **argv)
{
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"get");
    ros::NodeHandle nh;
    int res1=nh.param("a",9);
    int res2=nh.param("b",18);
    ROS_INFO("res1=%d",res1);
    ROS_INFO("res2=%d",res2);
}