#include "ros/ros.h"
#include "ros2_2/xxx.h"
int main(int argc,char *argv[])
{
    setlocale(LC_ALL,"");
    if (argc != 3)
    // if (argc != 5)//launch 传参(0-文件路径 1传入的参数 2传入的参数 3节点名称 4日志路径)
    {
        ROS_ERROR("请提交两个整数");
        return 1;
    }
    ros::init(argc,argv,"client");
    ros::NodeHandle nh;
    ros::ServiceClient client=nh.serviceClient<ros2_2::xxx>("AddInts");
    client.waitForExistence();
    ros2_2::xxx srv;
    srv.request.num1=atoi(argv[1]);
    srv.request.num2=atoi(argv[2]);
    bool res=client.call(srv);
    if(res)
    {
        ROS_INFO("服务调用成功:结果为:%d",srv.response.sum);
    }else
    {
        ROS_ERROR("调用服务失败");
    }
    return 0;
}