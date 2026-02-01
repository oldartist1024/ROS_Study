#include "ros/ros.h"
#include"ros2_2/xxx.h"
bool doReq(ros2_2::xxx::Request &req,ros2_2::xxx::Response &res)
{
    int num1=req.num1;
    int num2=req.num2;
    ROS_INFO("服务器接收到的请求数据为:num1 = %d, num2 = %d",num1, num2);
    if (num1 < 0 || num2 < 0)
    {
        ROS_ERROR("提交的数据异常:数据不可以为负数");
        return false;
    }
    res.sum=num1+num2;
    ROS_INFO("num1:%d+num2:%d=sum:%d",num1,num2,res.sum);
    return true;
}
int main(int argc,char *argv[])
{
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"server");
    ros::NodeHandle nh;
    ros::ServiceServer server=nh.advertiseService("AddInts",doReq);
    ROS_INFO("服务已经启动....");
    ros::spin();
    return 0;
}