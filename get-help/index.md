---
layout: article
title: "Get Help"
date: 2019-07-22
modified: 2019-07-26
excerpt:
tags: []
image:
  feature:
  teaser:
  thumb:
share: true
---

## Check out the screencasts first

Each scenario has an accompanying screencast (just below the scenario) that presents some overview material and a step by step walk through.
If you're stuck at a particular point then take a look at the screencast to see how things are supposed to work.

## FAQ

#### I'm trying to right click copy a selection of text (like an SSH key) in FireFox but it isn't giving me the option to copy.

A. FireFox has been completely re-engineered since we created the Katacoda scenarios and this is something that they've broken. Please try using another browser, we develop with Chrome, and other users report success with IE.

#### I get an error in Jenkins similar to `Unable to install JDK unless a valid Oracle account username/password is provided in the system configuration`

A. You need to configure Jenkins to use the latest version of JDK8 (**not** JDK9 or JDK10). Go back to step 3 for more instructions.

#### I walked away from my training, and now it's timed out, why can't I just pick up where I left off?

A. Katacoda need to protect their resources, and that's one of the things that helps them offer training to us at a reasonable cost. Idle sessions tie up resources on their back end, and to prevent resource starvation they time out sessions; so if this happens to you then you'll need to start over. Hopefully the previous practice will help get you back to where you left off pretty quickly. The [Kata](https://en.wikipedia.org/wiki/Kata) in Katacoda is about a pattern of moves that are repeated to build familiarity, so repetition is helpful to learning.

#### Jenkins in the Screencast looks different, why has it changed?

A. Jenkins core keeps changing, and they've been pushing out a new user interface, but mostly Jenkins is a framework for the plugins that we use, and they get updated frequently. So not only do things look different, but sometimes changes to plugins breaks the flow of the training and we need to adjust the instructions.

#### I can't find the GitHub plugin in Jenkins.

A. It used to be called `GitHub plugin` but the word `plugin` has been dropped from all the plugins, so now it's just called 'GitHub', which sadly makes it a bit harder to find in the sea of GitHub related plugins.

#### I get an error that `pet-clinic` is not found

A. In the Online DevOps Dojo, you need to go through the [Welcome module]({{ site.url }}/katacoda/os1-welcome/) to setup your environment. This includes the creation
of a GitHub repository named `pet-clinic`. If this repository was deleted or you skipped the Welcome module, then you will get a reminder to go through the module again.

#### I need a new `pet-clinic` repository: how do I reset it?

A. It's great to explore! But if you want to reset the `pet-clinic` repository to its original state, the easiest way is to:

* Delete the pet-clinic repository: go to https://github.com/your_shortname/pet-clinic/settings, scroll at the very bottom under "Danger Zone", and select "Delete this repository".
* Go through the [Welcome module]({{ site.url }}/katacoda/os1-welcome/) to setup the new pet-clinic repository.

## Contact the DevOps Dojo team

Feel free to [ask a question]({{ site.url }}/issues/new/choose) with a GitHub issue. Please be as specific as possible about what's going wrong e.g. which scenario, which step, what you tried to do, what you expected to happen, what actually happened.
