There are two types of widgets: stateless and stateful. Stateless widgets are widgets that
 don't store any state. That is, they don't store values that might change. For example, 
 an Icon is stateless; you set the icon image when you create it and then it doesn't 
 change any more. A Text widget is also stateless. You might say, "But wait, you can
 change the text value." True, but if you want to change the text value, you just create
 a whole new widget with new text. The Text widget doesn't store a text property that can
 be changed.

The second type of widget is called a stateful widget. That means it can keep track of 
changes and update the UI based on those changes. Now you might say, "But you said that
 widgets are immutable! How can they keep track of changes?" Yes, the stateful widget
 itself is immutable, but it creates a State object that keeps track of the changes. 
 When the values in the State object change, it creates a whole new widget with the
 updated values. So the lightweight widget (blueprint) gets recreated but the state
 persists across changes.

A stateful widget is useful for something like a checkbox. When a user clicks it, 
the check state is updated. Another example is an Image widget. The image asset may
 not be available when the widget is created (like if it is being downloaded), so a
 stateless widget isn't an option. Once the image is available, it can be set by 
 updating the state.

If this section was too much for you, then don't worry about it. It isn't necessary
 at all for today's tutorial. But if you would like to learn more, then check out the
 Flutter widgets 101 YouTube videos from the Flutter team or read the core principles 
 in the docs. If you want to do some deeper research then I recommend watching Flutter's 
 Rendering Pipeline and Flutter's Layered Design.