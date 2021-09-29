#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist
import time

def automate():

   rospy.init_node('automatic_controller')

   pub = rospy.Publisher('turtle1/cmd_vel', Twist , queue_size=10)

   rate = rospy.Rate(10)

   n = Twist()


   i=0
   rate.sleep()

   for i in range (6):


      n.linear.x = 3
      n.angular.z = 0
      pub.publish(n)
      time.sleep(2)
      rate.sleep()


      n.linear.x = 0
      n.angular.z = 0
      pub.publish(n)
      time.sleep(1)
      rate.sleep()


      n.linear.x = 0
      n.angular.z =2.5
      pub.publish(n)
      time.sleep(2)
      rate.sleep() 

      n.linear.x = 0
      n.angular.z = 0
      pub.publish(n)
      time.sleep(1)
      rate.sleep() 


      


if __name__ == '__main__' :

   try:
      automate()

   except rospy.ROSInterruptException:
      pass   
