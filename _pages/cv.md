---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Experience
======

* **Jun 2019 - Present: Technical Lead - Machine Learning, Myrtle.ai**
    * Built and lead Myrtle.ai's machine learning team and infrastructure.
      Recruiting and interviewing candidates at all levels from junior to
      senior/VP. Mentor and line manage the machine learning engineers, provide
      technical leadership and guidance across a broad range of experiments and
      projects, and ensure collaboration with other teams within Myrtle.ai.
      100% retention rate of team members.
    * Leading Myrtle.ai's involvement with MLPerf.org in order to identify and
      track innovations happening within the AI hardware accelerator space.
      Part of MLPerf.org team producing the world's largest open-source speech
      dataset.
    * Chaired MLPerf.org speech working group. Group contained 28 members from
      more than 10 different companies including Google, NVIDIA, and Intel. The
      group was responsible for producing an industry-relevant yet forward
      looking speech recognition benchmark. Through rapid iteration it
      developed the first state-of-the-art (SOTA) recurrent neural network
      transducer (RNN-T) implementation in January 2020.
    * Pitched cutting edge machine learning hardware-software co-design products to
      several teams at multiple hyperscale companies in the Bay Area.
    * Represent Myrtle.ai externally (6+ trips to Bay Area in last 12 months),
      including presenting Myrtle.ai's technology and products at conferences
      including:
        * Intel Spoken Language Technologies Summit (iSLTS) 2019 Keynote (100
          people +)
        * Xilinx Developer Forum (XDF) 2019

* **Jul 2018 - Jun 2019: Neural Network Engineer, Myrtle.ai**
    * Developed Myrtle.ai's first end-to-end automatic speech recognition
      (ASR)/Speech-to-Text (STT)/Speech Recognition algorithms, using both
      convolutional, recurrent and attention-based neural networks, from a
      research idea to a demonstrable product capable of running efficiently on
      FPGAs in hyperscale data centers. This included state-of-the-art model
      compression via quantization and sparsity.
    * Edited a series of blog posts written by Myrtle.ai's former Chief
      Scientist.  This series was well received by the community and has been
      shared on Facebook by Yann LeCun and retweeted by Jeff Dean, Jeremy
      Howard, and Roger Grosse.

* **Sep 2017 - May 2018: Teaching Assistant - Machine Learning, University of
  Bristol**
    * Teaching undergraduate students in lab sessions for the third year
      machine learning course and the second year symbols, patterns and
      signals, and databases and cloud concepts units.

* **Jul 2017 - Sep 2017: Connected and Autonomous Vehicles Research Studentship,
  University of Bristol**
    * Creating a network of strategically positioned roadside sensors around
      Bristol that will communicate, in real-time, vital information about the
      surroundings, such as the location of all pedestrians, to future
      connected and autonomous vehicles.
    * Implementing a version of Faster R-CNN with Python, TensorFlow, and Keras
      to predict bounding boxes around vulnerable road users in 3D space.

* **Jun 2016 - Sep 2016: Software Developer Internship, Myrtle.ai**
    * Working on DRUM, a strongly-typed purely-functional compiler, as part of
      the Government’s Innovate UK research into efficient computer advanced
      driver assistance systems (ADAS) hardware for connected cars and
      autonomous vehicles.
    * Utilising DRUM to implement and optimise computer-vision and
      deep-learning algorithms.

* **Jun 2015 - Sep 2015: Software Developer Internship, Altaire Limited**
    * Worked as part of Altaire’s software engineering team developing the eCRM
      system. The system is highly scalable, handling 50,000,000+ emails per
      month, fault tolerant, reliable and is critical to Altaire’s business.
    * Utilised machine learning techniques to classify several billion data
      points in order to provide unique statics to clients that Altaire’s
      competitors are unable to provide.
    * Explored the feasibility of containerising Altaire’s services to make
      scaling even easier.
    * Implemented a test suite and linked a CI server, Jenkins, into the
      standard workflow.

Education
======

* **2014 - 2018: MEng Computer Science with Study Abroad, University of
  Bristol**
    * First Class (79%)
    * Dissertation: Inducing sparsity in speech-to-text neural networks in
      order to reduce energy consumption and increase performance on FPGA
      implementations.
* **2016 - 2017: Computer Science Year Abroad, University of California,
  Irvine**
    * GPA: 3.97

Publications
======
  <ul>{% for post in site.publications %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

Talks
======
  <ul>{% for post in site.talks %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>
