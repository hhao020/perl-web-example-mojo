# Perl Mojolicious Example

## Useful Resources:

Mojo Home Page: [http://mojolicio.us/](http://mojolicio.us/)

Mojo Video Tutorials: [http://mojocasts.com/e5](http://mojocasts.com/e5)

HTML Guides: [http://htmldog.com/guides/html/beginner/](http://htmldog.com/guides/html/beginner/)

## How To Read The Example

The Mojo app has 3 main parts:
1. A Router
2. Controllers
3. Templates

### The Mojo Router

You can find the router under `lib/Contacts.pm`. 
A router connects the browser request to a controller action.

### A Mojo Controller

All Mojo controllers are found in `lib/Contacts/`.
The subroutines of a controller are called actions, and they're
responsible for getting the request, understand it and run the required
logic.

### A Mojo Template

For each controller action, you can write a matching template in
`templates/controller` folder.
The template is where you create the final HTML for the browser.

