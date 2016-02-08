# UsingNotifications
iOS, Objective-C, Notification-Observe Design Pattern

Let’s be clear that this is not Push(UIUserNotificationType class) or Local(UILocalNotification) Notifications in iOS. They are iOS features, here we are talking about a very useful Design Pattern called Notifications(using NSNotificationCenter class). This design pattern enables code reusability, enable multiple objects to react to a single notification and a few others benefits.

Now If we go by name, it is understood that, we are talking about "someone Notifying something" && "someone actively Observing for something". Clearly those someone's inference here are classes, perhaps objects at run time. Hence to summarize, this is an arrangement between objects in which one object Notifies other Objects/Object about an event/action/message that it intends to Broadcast to all its registered observers. Here we are talking about one to many relationships between notifier and its registered observer's. This is almost analogous to a real life example of radio station. The radio station(notifier) broadcasts some frequency of waves and only interested listeners/users(registered observers) tune in to listen the radio. 

Hence if you Run the project, you will see a Tabbar application with 5 viewControllers 5 tabs. One of them is a notifier(the FirstNotifier tab in App, which is PostNotificationViewController class in code) and other four tabs/ViewControllers are registered observers(SecondObserver, ThirdObserver, FourthObserver, FifthObserver). Now how do you register observers? wait, lets not jump there yet, lets first understand what this application does. After app launch when you tap on the "Post Notifications" button in FirstNotifier tab, Methods from (SecondObserverViewController, ThirdObserverViewController, FourthObserverViewController, FifthObserverViewController) are called and each prints statements on console based on its implementation. This behavior is achieved because the object of PostNotificationViewController sends out a Notification to all classes & registered observers act accordingly to implement the desired methods when they receive notification. Hence we are establishing one-to-many relationship among classes unlike the Delegation design pattern which is only between two parties. The sent out notification in this example is "thisIsTheNotification" and registered user respond accordingly on receiving notification. 

Now we will answer how to register observers. Simply create an observer class, specify what the observer class is suppose to do in the implementation file (.m file) and use that class to subclass all observer class(which is called Inheritance in OOP). Override the methods in these subclasses to provide special behavior  if necessary(we call this phenomena polymorphism in OOP).

Key things to keep in mind: 
(1)Their are no compile time check to ensure notifications are correctly handled
(2)you need to explicitly unregister with the notification center if previously register object is deallocated
(3)Not very traceable. Can lead to app flow & control issues if not implemented correctly

Check out the links below for more reference:

[1]http://blog.shinetech.com/2011/06/14/delegation-notification-and-observation/
[2]http://www.raywenderlich.com/46988/ios-design-patterns

Open an issues with tag discussion or Question and I will be happy to answer.
that's all folks. 
