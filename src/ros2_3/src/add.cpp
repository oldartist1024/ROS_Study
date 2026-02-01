#include "ros/ros.h"
int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"add_and_set");
    ros::NodeHandle nh;
    nh.setParam("a",55);

    ros::param::set("b",100);

    std::vector<int> v;
    v.push_back(1);
    v.push_back(2);
    ros::param::set("c",v);
    return 0;
}