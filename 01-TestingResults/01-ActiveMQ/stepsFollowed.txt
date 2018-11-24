# Implementation Detail

* Right click on `Test Plan` --> `Add` --> `Threads (Users)` --> `Thread Group`
* Right click on `Thread Group` --> `Add` --> `Sampler` `JMS Subscriber` 
	* Repeat the steps and choose `JMS Publisher`
* Set the properties for JMS Publisher as follows

![Publisher configuration](./publisher.png)
	* set the `Text Message` field  as `test1 : $ {__time(,)}`

* Set the properties for JMS Subscriber as follows

![Subscriber configuration](./subcriber.png)

* Once the above steps are complete, we select `Thread Group` --> `Add` --> `Listener` --> `Graph Results`
	* Any other 	`Listeners` that would help understanding the data.
	