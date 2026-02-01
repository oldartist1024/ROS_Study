#include"ros/ros.h"
#include"geometry_msgs/Twist.h"
int main(int argc, char **argv)
{
    ros::init(argc,argv,"test01");
    ros::NodeHandle nh;
    ros::Publisher pub=nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel",10);
    ros::Rate rete(10);
    geometry_msgs::Twist twist;
    twist.linear.x=2.0;
    twist.linear.y=2.0;
    twist.linear.z=2.0;
    twist.angular.x=1.0;
    twist.angular.y=1.0;
    twist.angular.z=1.0;
    while(ros::ok())
    {
        pub.publish(twist);
        rete.sleep();
        ros::spinOnce();
    }
    return 0;
}