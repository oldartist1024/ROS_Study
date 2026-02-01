#include "ros/ros.h"
#include "std_msgs/String.h"

void doMsg(const std_msgs::String::ConstPtr &msg_p)
{
    ROS_INFO("接收到：%s",msg_p->data.c_str());
}
int main(int argc, char  *argv[])
{
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"listener");
    ros::NodeHandle nh;
    ros::Subscriber sub=nh.subscribe<std_msgs::String>("chatter",10,doMsg);
    ros::spin();//循环读取接收的数据，并调用回调函数处理
    return 0;
}