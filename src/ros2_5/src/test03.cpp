#include "ros/ros.h"
#include "turtlesim/Spawn.h"
int main(int argc,char **argv)
{
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"test03");
    ros::NodeHandle nh;
    ros::ServiceClient client =nh.serviceClient<turtlesim::Spawn>("/spawn");
    ros::service::waitForService("/spawn");

    turtlesim::Spawn spawn;
    spawn.request.name="aaa";
    spawn.request.x=1;
    spawn.request.y=1;
    spawn.request.theta=1.57;
    
    bool flag=client.call(spawn);
    if(flag)
    {
        ROS_INFO("请求成功,%s",spawn.response.name.c_str());
    }
    else
    {
        ROS_INFO("请求失败");
    }

    return 0;
}