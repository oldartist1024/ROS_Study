#include "ros/ros.h"
#include "ros2_1/Person.h"
void doPerson(const ros2_1::Person::ConstPtr& person_p)
{
    ROS_INFO("订阅的人信息:%s, %d, %.2f", person_p->name.c_str(), person_p->age, person_p->height);
}
int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"listener_person");
    //2.创建 ROS 句柄
    ros::NodeHandle nh;
    ros::Subscriber sub=nh.subscribe<ros2_1::Person>("chatter",10,doPerson);
    ros::spin();  
}