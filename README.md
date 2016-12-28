# Gridly
iOS app playing around with MapKit and Firebase (and possible Geofire if it becomes necessary)

I want to make an app that allows a user to see his/her friends interesting activities as they are navigating an area. A user can organize these activities into various channels: food, sports, entertainment (will be stored as constants at start but later will allow for customization). As you travel around a new area, you can see the various cool spots that you might have overlooked. This would be super useful for people traveling to new cities and will be a fun project to work on in my spare time. 

Work Log:
12/27/2016
I started by creating simple view controllers for the login/registration. Then I followed the steps using pods to download Firebase to use for user authentication and persistent data. I finished user authentication and tested. After this was working, I went about learing about NoSQL db storage with Firebase and the JSON structure. I will need this to save all of the activities, channels, and user relationships. I did a simple test saving a new users first name and last name and it worked. I then moved onto making the tab bar controller with the various tabs: profile, map, and activity table.
