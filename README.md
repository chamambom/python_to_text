# Self-Service Portal for Internet Bandwidth Shaper

## Introduction
Welcome to our self-service portal designed to streamline your experience with our internet bandwidth shaper. This initiative stemmed from my time as a Systems Engineer at an Internet Service Provider (ISP) in Zimbabwe, between 2015 and 2017. Faced with the challenge of managing a tier one internet customer's bandwidth needs, I embarked on a journey to revolutionize our operational support systems.

## About Me
I served as a Systems Engineer during this period, entrusted with managing critical business and operational support systems (BSS/OSS) running on Linux/Windows servers. My responsibilities also extended to maintaining the underlying VMware & HyperV infrastructure and automating repetitive tasks.

## The Challenge
Our tier one customer, leasing our bandwidth internet shaper while developing their own, posed a significant operational overhead. Requests flooded in via email and our ticketing system's support queue, demanding constant attention.

## The Solution
Faced with mounting operational demands, I seized the opportunity to pioneer a self-service portal. This innovative platform empowered our customers to take control of their bandwidth management, reducing our support burden and enhancing their experience.

## Key Features
- **Self-Service Interface:** Customers can now manage their bandwidth allocation and configurations autonomously, eliminating the need for constant manual intervention.
- **Streamlined Communication:** Our portal ensures seamless communication by centralizing all customer requests and interactions within a single, user-friendly interface.
- **Efficiency Through Automation:** Leveraging automation, we've minimized response times and optimized resource allocation, enhancing both customer satisfaction and operational efficiency.

## Conclusion
This self-service portal stands as a testament to our commitment to innovation and customer-centricity. By embracing automation and empowering our customers, we've not only tackled operational challenges but also fostered stronger, more efficient relationships. Welcome to a new era of streamlined internet bandwidth management.

#### Python Flask script that generates a structured text file

Portal Images 

#### Add Subscriber 
![img_3.png](static/img/img_3.png)

#### View Subscribers 

![img_1.png](static/img/img_1.png)

#### Output

![img_4.png](static/img/img_4.png)

Our Internet bandwidth shaper consumed a text file in this format

 - 10.10.10.25 10.10.10.25@ispcustomer.co.zw :=set_attribute 30_MEG_UP_30_MEG_DOWN
 - 10.10.10.26 10.10.10.26@ispcustomer.co.zw :=set_attribute 50_MEG_UP_50_MEG_DOWN

Take note of the spaces in the file. 

ipaddress domain apply the bandwidth.

This output was then sent to the internet bandwidth shaper via a linux cron job. 