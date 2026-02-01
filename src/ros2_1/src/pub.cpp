// 1.包含头文件 
#include "ros/ros.h"
#include "std_msgs/String.h" //普通文本类型的消息
#include <sstream>

int main(int argc, char  *argv[])
{   
    //设置编码
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"talker");
    ros::NodeHandle nh;
    ros::Publisher pub=nh.advertise<std_msgs::String>("chatter",10);

    std_msgs::String msg;
    std::string msg_front = "Hello 你好！";
    int count = 0; //消息计数器

    ros::Rate r(1);

    while(ros::ok())
    {
        std::stringstream ss;
        ss << msg_front << count;
        msg.data=ss.str();
        pub.publish(msg);
        ROS_INFO("发送的消息:%s",msg.data.c_str());
        r.sleep();
        count++; 
        ros::spinOnce();
    }
    return 0;
}