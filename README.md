# Accessibility

A project that aims to know how it works the accessibility with Flutter.

In summary the Aceessibility is the process of making the app accessible to everyone. People who deal with disabilities, people who are blind, people who are deaf should be able to use the app.

Check my portfolio to see how it works: https://rolando-garcia.netlify.app/#/home.

## What is accessibility?

Interfaces usable by anyone

Including users with disabilities:

- Motor impairments
- Visual impairments
- Cognitive disabilities
- Deaf and hard of hearing

## What can we do if we have large fonts?

Test each screen if it is accessible with large fonts.

## What is the best way to test accessibility?

For Android: Use an application called Accessibility Scanner

For iOS: Use Xcode Tools

For web: Use the DevTools

## Widgets for Accesibility

ExcludeSemantics: A widget that drops all the semantics of its descendants.

MergeSemantics: A widget that merges the semantics of its descendants Causes all the semantics of the subtree rooted at this node to be merged into one node in the semantics tree.

Semantics: A widget that annotates the widget tree with a description of the meaning of the widgets.Used by accessibility tools, search engines, and other semantic analysis software to determine the meaning of the application

Ref: https://docs.flutter.dev/development/ui/widgets/accessibility

## Consider

Consider the following list of accessibility:

https://docs.flutter.dev/development/accessibility-and-localization/accessibility#accessibility-release-checklist

## General accessibility examples

If we have to give support that have Visual impairments, we can increase the font size of our application or If the person is fully blind we can use the Semantic and the other widgets from Flutter to allow the Screen Reader to read the application.

## Exactly examples

### Motor

**Challenges**

- Require large click areas
- Require special hardware
- Require Voice activated software

### Vison

**Problems**

- Blindness
- Severe visual impairment
- Moderate visual impairment
- Mild vision

**How to help**

- Increase the font size of the application
- Screen Reader
- High contrast

### Colorblindness

**Challenges**

Not being able to see or differetiate certain colors

**How to help**

Use color AND icons to convey messages
Options to change color

### Neurodiversity

**Challenges**

- Focusing problems
- Learning difficulties
- Autism
- Dyslexia
- ADHD

**How to help**

- Minimal design
- Voice narration and subtitles
- Spell checking
- Remember settings and passwords
- Guide the user (without overwhelm)

### Hearing

**Challenges**

- High hearing threshold by air or bone conduction.
- Failure to repeat words in a word recognition test.

**How to help**

- Closed captioning (If u have media content)
- Games: Visual signals
- Vibrate on notifications
- Implement Android 10 feature: Live Captioning. If we have a media content we can use it to make the captions.

# Testing

Use TalkBack to test the accessibility of your app in Android
Use VoiceOver to test the accessibility of your app in iOS

Use physically devices to test the accessibility of your app

Check your app with different text scaling options

Write widget unit tests

## References

From Flutter Team
https://www.youtube.com/watch?v=bWbBgbmAdQs

From Flutter Europe (Recommend to see)
https://www.youtube.com/watch?v=Ywgt3cRKyrs

From Flutter Docs
https://docs.flutter.dev/development/accessibility-and-localization/accessibility

From Flutter Widgets Documentation
https://docs.flutter.dev/development/ui/widgets/accessibility
