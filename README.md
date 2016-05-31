## Carousel

The purpose of this homework is to leverage views, view properties, and events to create a high fidelity prototype that is difficult to distinguish from a production app. We're going to use the techniques from this week to implement the Carousel app from the signed out state to the basic signed in state.

Time spent: `8`

### Features

#### Required

- [X] Static photo tiles on the initial screen.
- [X] Sign In.
  - [X] Tapping on email/password reveals the keyboard and shifts the scrollview and Sign In button up.
  - [X] User sees an error alert when no email is present or no password is present.
  - [X] User sees a activity indicator upon tapping the Sign In button.
  - [X] User sees an error alert when entering the wrong email/password combination.
  - [X] User is taken to the tutorial screens upon entering the correct email/password combination.
- [X] Tutorial Screens.
  - [X] User can page between the screens.
- [X] Image Timeline.
  - [X] Display a scrollable view of images.
  - [X] User can tap on the conversations button to see the conversations screen (push).
  - [X] User can tap on the profile image to see the settings view (modal from below).
- [X] Settings.
  - [X] User can dismiss the settings screen.
  - [X] User can log out.



#### Optional

- [X] Photo tiles move with scrolling.
- [X] Sign In
  - [X] When the keyboard is visible, if the user pulls down on the scrollview, it will dismiss the keyboard
  - [X] On appear, scale the form up and fade it in.
- [X] Sign Up
  - [X] Tapping in the form reveals the keyboard and shifts the scrollview and "Create a Dropbox" button up.
  - [X] Tapping the Agree to Terms checkbox selects the checkbox.
  - [X] Tapping on Terms shows a webview with the terms.
  - [X] User is taken to the tutorial screens upon tapping the "Create a Dropbox" button.
- [X] Tutorial Screens.
  - [X] User can page between the screens with updated dots.
  - [X] Upon reaching the 4th page, hide the dots and show the "Take Carousel for a Spin" button.
- [ ] Learn more about Carousel.
  - [ ] Show the "Learn more about Carousel" button in the photo timeline.
  - [ ] Tap the X to dismiss the banner.
  - [ ] Track the 3 events:
    - [ ] View a photo full screen.
    - [ ] Swipe left and right.
    - [ ] Share a photo.
  - [ ] Upon completion of the events, mark them green.
  - [ ] When all events are completed, dismiss the banner.

#### The following **additional** features are implemented:

- [X] More detailed error messaging

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. 
2. 

### Video Walkthrough 

Here's a walkthrough of implemented user stories:

![carousel](carousel.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

* Any libraries or borrowed content.
