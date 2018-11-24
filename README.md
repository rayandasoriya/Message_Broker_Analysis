# Message Broker faceoff
### ActiveMQ | RabbitMQ | Kafka

#### CSC 510
![NC State University](https://github.com/rayandasoriya/MQTT_Analysis/blob/J/98-Resources/10-NCSU-Logo.png)

Team ID - c_uparog

#### Team Members 
* [Arshdeep Singh Syal](https://github.com/ArshdeepSinghSyal) (asyal) {SonarQube}
* [Jubeen Shah ](https://github.com/jubeenshah)(jnshah2) {JMeter Testing + Community Statistics}
* [Rayan Dasoriya](https://github.com/rayandasoriya) (rdasori) {JMeter Testing}
* [Sujal](https://github.com/SujalAhrodia) (ssujal) {Gatling Testing}

### Table of content
1. [What are message queueing brokers?](https://github.com/rayandasoriya/MQTT_Analysis/tree/J#what-are-message-queueing-brokers)
2. [Brokers are we comparing](https://github.com/rayandasoriya/MQTT_Analysis/tree/J#brokers-are-we-comparing)
3. [Resources we have used](https://github.com/rayandasoriya/MQTT_Analysis/tree/J#resources-we-have-used)
4. [Setting up the environment](https://github.com/rayandasoriya/MQTT_Analysis/tree/J#setting-up-the-environment)
5. Results
	1. [GitHub](https://github.com/rayandasoriya/MQTT_Analysis/tree/J#github)

### What are message queueing brokers?

Message queueing brokers are the so-called *translators* in the world of computer networks that are responsible for translation of messages from the messaging protocol being used by the `sender` to the messaging protocol being used by the `receiver` and are the building blocks of the message-oriented middleware (MOM). 

![Message Broker Diagram](https://github.com/rayandasoriya/MQTT_Analysis/blob/J/98-Resources/11-MessageBroker.png)

### Brokers are we comparing

There are [several message brokers](https://en.wikipedia.org/wiki/Message_broker#List_of_message_broker_software) out there, however we have chosen three out of the bunch. 

* [Apache ActiveMQ](http://activemq.apache.org)
* [Rabbit MQ](http://www.rabbitmq.com)
* [Apache Kafka](https://kafka.apache.org)

![MQ Services under consideration](https://github.com/rayandasoriya/MQTT_Analysis/blob/J/98-Resources/09-MQ-Logos.jpeg)

### Resources we have used

* **Performance Testing**
	* [Jmeter](https://jmeter.apache.org)
	* [Gatling](https://gatling.io)
	* [Kafka native performance tools](https://github.com/kafka-dev/kafka/blob/master/bin/kafka-producer-perf-test.sh)
* **Bugs and Continuous Inspection**
	* [FindBugs](http://findbugs.sourceforge.net)
	* [SonarQube](https://www.sonarqube.org)
* **Community and other Metrics**
	* [GitHub](https://github.com)
	* [Reddit](https://www.reddit.com)
	* [StackShare](https://stackshare.io/)
	* [Stack overflow](https://stackoverflow.com)
	* [Google Trends](https://trends.google.com/trends/)
	* [Lines of Code](https://github.com/rayandasoriya/MQTT_Analysis/tree/J/02-GitHubStats/01-LinesOfCode)

### Setting up the Environment
* [Apache ActiveMQ](https://github.com/rayandasoriya/MQTT_Analysis/blob/J/00-ProjectInformation/01-Installation-apacheMQ.pdf)
* [RabbitMQ](https://github.com/rayandasoriya/MQTT_Analysis/blob/J/00-ProjectInformation/02-Installation-rabbitMQ.pdf)
* [Apache Kafka](https://github.com/rayandasoriya/MQTT_Analysis/blob/J/00-ProjectInformation/03-Installation-ApacheKafka.pdf)
* [Installing the Tools](https://github.com/rayandasoriya/MQTT_Analysis/blob/J/00-ProjectInformation/04-Installing-Tools.pdf)

### Results

#### Performance testing
![Box Plots Combined](https://github.com/rayandasoriya/MQTT_Analysis/blob/J/98-Resources/15-BoxPlotsCompiled-MessageBroker.png)
#### GitHub

* RabbitMQ is the most popular in the industry, despite Kafka having better performance. 
	* This can be because, Kafka was late to the market, and by then rabbitMQ had already taken over the market share from activeMQ
		* This can be because a majority of the companies that were previously using ActiveMQ found it very complex. 
* The switching costs associated to rabbitMQ are very low
	* It is simple, flexible, and has several tool integrations available

![Industrial Usage](https://github.com/rayandasoriya/MQTT_Analysis/blob/J/98-Resources/01-IndustUse.jpg)

* Based on commits per year for each of the message queuing services, it can be seen that the community for ActiveMQ is becoming less and less active over the years, being the most active in the year 2006, and the least active being this year (2018), which could be correlated with the decline in popularity of the broker amongst developers and organizations alike.
* RabbitMQ’s community seemed to be the most active during the years 2009 through 2016. After which it was swiftly taken over by Kafka.
	* It is interesting to know that the number of commits per year for Kafka increased at an average rate of **61%** from 2011 to 2017
	* For the same period, RabbitMQ had a growth rate *-12%*, with activeMQ having a growth rate of *-6%*.
	* These results further concretely help us understand the reason for growing popularity amongst developers and organizations and their tendency of moving towards Kafka, thereby resulting in a slightly higher growth rate in adoption.
	
![Commits Per Year](https://github.com/rayandasoriya/MQTT_Analysis/blob/J/98-Resources/05-Commit_year.jpg)

* Looking at the google internet search for the topics directly related to RabbitMQ, Kafka, and ActiveMQ it can clearly be seen that In the past year, the most popular message queueing service has been Kafka.
	* This fact can be further supported by the fact that Kafka has the highest number of stars (amongst the three) on Github, translating to very high preference amongst developers.
* This statistic is important to know, as it can help us with the growth trend towards a particular message queuing broker, which should be higher for Kafka, given its increased popularity amongst developers. 
	* For example, a comparison is made between the industrial usage of the message queuing broker, as it was in the beginning of the semester and as it can be seen in the image below.
* As hypothesized, the growth in the number of companies using Kafka has 1% more increase than in RabbitMQ. This has resulted in more tools being developed for the integration with Kafka.

![Combined Statistics](https://github.com/rayandasoriya/MQTT_Analysis/blob/J/98-Resources/08-CombinedDiagram-GIthub.jpeg)



