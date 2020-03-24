---
layout: home
permalink: /
image:
  feature: home-1600x800.jpg
---

## What is the Online DevOps Dojo?

The <a href="{{ site.url }}/modules">Online DevOps Dojo</a> is a novel set of hands on training modules which cover both cultural and technical aspects of DevOps. 

The modules are hosted on [GitHub](https://github.com/dxc-technology/online-devops-dojo) and executed from the [Katacoda](https://www.katacoda.com/) platform. They can be run from your browser without any download or configuration.

Informed by research on how people learn, the DevOps Dojo curriculum incorporates storytelling
and emphasizes learning by doing to help improve learner engagement thus achieve desired learning outcomes.

As humans, we love stories we have been sharing them since time immemorial. The <a href="{{ site.url }}/modules">Online DevOps Dojo</a> takes an innovative, role-based story telling approach to enable hands-on training at scale. 

The <a href="{{ site.url }}/modules">Online DevOps Dojo</a> modules are set in the **Pet Clinic** multi-verse.

![](images/onceuponatime.jpg)

The modules place learners in real-world-like scenarios, scenarios where they work with a virtual cast of characters sharing the hopes and dreams of the **Pet Clinic** team as they learn about DevOps.

The troupe of characters in team **Pet Clinic** are:

<img src="images/charlie.png" width="400"/> | **C**harlie is the **C**EO of the Pet Clinic company; a technology entrepreneur, investor, and philanthropist.<br/>Charlie is intent on disrupting the world of Pet Clinics and sees DevOps as key to the company's plans ...
<img src="images/chun.png" width="400"/> | **C**hun is a **c**oach, change facilitator and technologist. Chun is an avid outdoors person and adrenaline junky, lover of fun, hater of being on-call. She encourages teams to automate as much as possible of the build, test, package and deploy process to ensure that the systems were created with a LessOps model in mind.
<img src="images/paulo.png" width="400"/> | **P**aulo the **P**roduct Owner. A passionate and outcome-driven product owner with twenty years experience in all aspects of product delivery. He is particularly fond of using the word INCONCEIVABLE!, in response to which the team remind him that he keeps using that word and that it [doesn't mean what he thinks it means](https://www.youtube.com/watch?v=D58LpHBnvsI).
<img src="images/brenda.png" width="400"/> | **B**renda from the **B**usiness who is keen to take the Pet Clinic in to new growth areas sees DevOps being key to that. She is extremely proud of her two golden retrievers Bonnie and Clyde.
<img src="images/hal.png" width="400"/> | **H**al the white hat **H**acker, engaged by the company to find and expose vulnerabilities in the company's applications. Hal, tired of people asking him to open the pod bay doors, has been trying to get people to call him by the code name Neo instead. But most people still call him Hal. Hal has no pets due to a wide range of allergies.
<img src="images/selma.png" width="400"/> | **S**elma is the company's **S**ecurity Officer, and is the proud owner of a German Shepherd called Arnold. Selma is more than mindful of the fact that security approaches and technologies must be systemic to the applications’ data handling, transportation and storage mechanisms as she works to address the sudden spike in security vulnerabilities being identified as a result of Hal's nefarious efforts.
<img src="images/adam.png" width="400"/> | **A**dam is a System **A**dministrator transitioning to the role of Site Reliability Engineer (SRE). Adam is working closely with Selma to ensure the security of the company's software and applications. Adam suspects that Hal may have an inside man. Adam has a particular set of skills so he is working on a plan to look for the hacker, to find the hacker, to ... the hacker.
<img src="images/dan.png" width="400"/> | **D**an, has worked as a senior developer for a number of years, most recently for First Order Incorporated a role he left due to the excessive travel requirements. Dan's workmates still fondly recall the fun and games which ensued when Shelob, his pet tarantula, got loose on *"Bring Your Pets to Work"* day.
<img src="images/tina.png" width="400"/> | **T**ina is a **T**ester. Tina is aware that the role of and skills required by a tester are changing.<br/>Tina is keen to expand her strong testing skills, to become more technically adept, and learn more about coding so she can start working on test automation. Like Paulo she volunteers at the animal rescue center and helps run the Pet Clinic community engagement project which supports the shelter.
<img src="images/santhosh.png" width="400"/> | **S**anthosh is the **S**crum Master and facilitator of the agile development team. Santhosh works to protect the team from anything - typically requests originating from Brenda or Paulo that may distract them from the sprint deliverables - and to remove anything that impedes the flow of value delivery from the team to the business.

## Experience the trainings - Use the Dojo, Luke!

Get started right away on your DevOps dojo journey with our collection of modules 👇

<div class="wrap">
  <div class="tiles">
    <!-- User 'order' attribute to sort posts -->
    <!-- All posts with an order -->
    {% assign postArray = "" | split:"|"  %}
    {% for item in site.categories.katacoda %}
      {% if item.order %}
        {% if item.tags contains 'test' %}
        {% else %}
          {% assign postArray = postArray | push: item %}
        {% endif %}
      {% endif %}
    {% endfor %}

    {% assign postArray = postArray | sort: 'order'  %}

    <!-- Then all others -->
    {% assign postArrayNoOrder = "" | split:"|"  %}
    {% for item in site.categories.katacoda %}
      {% unless item.order %}
        {% assign postArrayNoOrder = postArrayNoOrder | push: item %}
      {% endunless %}
    {% endfor %}

    {% for post in postArray %}
      {% include post-grid.html %}
    {% endfor %}
    {% for post in postArrayNoOrder %}
      {% include post-grid.html %}
    {% endfor %}
  </div><!-- /.tiles -->
</div><!-- /.wrap -->

## Open Source

Online DevOps Dojo is fully Open Source. Head to the [about section](/about#contributing) for more details and guidance for contributions.
