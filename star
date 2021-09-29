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
   n.linear.x = 0.0
   n.angular.z = 0.0
   pub.publish(n)
   time.sleep(1)

   i=0

   for i in range (3):


      n.linear.x = 2
      n.angular.z = 0
      pub.publish(n)
      time.sleep(2)


      n.linear.x = 0
      n.angular.z = 0
      pub.publish(n)
      time.sleep(1)


      n.linear.x = 0
      n.angular.z = 2.1
      pub.publish(n)
      time.sleep(1) 

      n.linear.x = 0
      n.angular.z = 0
      pub.publish(n)
      time.sleep(2) 


      i=i+1


if __name__ == '__main__' :

   try:
      automate()

   except rospy.ROSInterruptException:
      pass   
