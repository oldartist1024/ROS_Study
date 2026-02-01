#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc,char **argv)
{
    ros::init(argc,argv,"hello");
    
    ros::param::set("/set_A",100); //全局,和命名空间以及节点名称无关
    ros::param::set("set_B",100); //相对,参考命名空间
    ros::param::set("~set_C",100); //私有,参考命名空间与节点名称

    while(ros::ok())
    {

    }
    return 0;
}    
    