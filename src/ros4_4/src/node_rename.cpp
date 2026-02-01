#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc,char **argv)
{
    std::map<std::string, std::string> map;
    map["__ns"] = "xxxx";
    ros::init(map,"wangqiang");
    ros::NodeHandle nh;
    while(ros::ok())
    {
        
    }
    return 0;
}    
    