---
layout: home
title: "Get Help"
date: 2019-07-22
modified: 2019-07-26
excerpt:
tags: []
image:
  feature: home-1600x800.jpg
  teaser:
  thumb:
share: true
---

## FAQ

#### I'm trying to right click copy a selection of text (like an SSH key) in FireFox but it isn't giving me the option to copy.

A. FireFox has been completely re-engineered since we created the Katacoda scenarios and this is something that they've broken. Please try using another browser, we develop with Chrome, and other users report success with IE.

#### I walked away from my training, and now it's timed out, why can't I just pick up where I left off?

A. Katacoda need to protect their resources, and that's one of the things that helps them offer training to us at a reasonable cost. Idle sessions tie up resources on their back end, and to prevent resource starvation they time out sessions; so if this happens to you then you'll need to start over. Hopefully the previous practice will help get you back to where you left off pretty quickly. The [Kata](https://en.wikipedia.org/wiki/Kata) in Katacoda is about a pattern of moves that are repeated to build familiarity, so repetition is helpful to learning.

#### I get an error that `pet-clinic` is not found.

A. In the Online DevOps Dojo, you need to go through the [Welcome module]({{ site.url }}/katacoda/os1-welcome/) to setup your environment. This includes the creation
of a GitHub repository named `pet-clinic`. If this repository was deleted or you skipped the Welcome module, then you will get a reminder to go through the module again.

#### I need a new `pet-clinic` repository: how do I reset it?

A. It's great to explore! But if you want to reset the `pet-clinic` repository to its original state, the easiest way is to:

* Delete the pet-clinic repository: go to https://github.com/your_shortname/pet-clinic/settings, scroll at the very bottom under "Danger Zone", and select "Delete this repository".
* Go through the [Welcome module]({{ site.url }}/katacoda/os1-welcome/) to setup the new pet-clinic repository.

#### <a name="PAT"></a>Usage of GitHub.com Personal Access Token

Some training scenarios are requesting the trainee's GitHub.com Personal Access Token.

Its purpose is to get access to his GitHub.com account in order to create a clone of the pet-clinic repository in your GitHub.com account, add labels, create issues and allow the trainee to edit files though Katacoda editor during the course of the trainings.
The Personal Access Token is only used during sessions in Katacoda.com, which is an ephemeral environment in the Cloud fully deleted after one hour of inactivity and only accessible by the trainee. The Personal Access Token is not stored anywhere else and not shared. This is also a reason why the Personal Access Token is requested at the beginning of every session for the scenarios which needs to access your pet-clinic repository.

All pull requests to add or modify the trainings must comply with this policy.

The source code is located in script shells in `assets` sub-folders under [https://github.com/dxc-technology/online-devops-dojo/tree/master/online-devops-dojo](https://github.com/dxc-technology/online-devops-dojo/tree/master/online-devops-dojo).

## Contact the DevOps Dojo team

Feel free to [ask a question]({{ site.url }}/issues/new/choose) with a GitHub issue. Please be as specific as possible about what's going wrong e.g. which scenario, which step, what you tried to do, what you expected to happen, what actually happened.
