# Blue-Green-Infrastructure
Blue Green Infrasctructure with Terraform and AWS

# What is Blue Green deployment?
 It is a DevOps practice aimed to reduce the downtime of updates by creating a new copy of the component while maintaining the current.
 
 You have two version of the system: One with the actual version (*blue*) and another with newer version (*green*). When the new version (*green*) is up and running you can seamlessly switch traffic to it. This is useful to reduce downtime and imporve rollback time. 
 
 This form of deployment is mostly used for major/breaking changes.
 
 ![blue/green](https://cdn-images-1.medium.com/max/800/1*7jSS2x7NpyGaSW5q3DlufA.png)
 
 
References: https://hackernoon.com/blue-green-infrastructure-with-terraform-d5f9e8f79ed4 
