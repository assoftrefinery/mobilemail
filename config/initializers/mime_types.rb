# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
# Mime::Type.register_alias "text/html", :iphone

#Separate Views For Mobile Devices

#What we’ve done so far will work for the cases where we want to fine-tune the application for mobile devices,
#but what if we have grander plans and want to change the application so that it looks and behaves more
#like a native application when viewed on a mobile device? To do this we’ll need to change pretty much every view in our
#application. How would we go about doing that?

#The trick to doing this is to create a new MIME type in our application and Rails provides a file for doing
#just that at /config/initializers/mime_types.rb. The file contains a commented-out example for providing
#a new iphone type which we can modify to create a new mobile one. This gives us an alternative HTML format for mobile devices.

Mime::Type.register_alias "text/html", :mobile
