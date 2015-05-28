RefineryProfessor: RefineryCMS adapted for University Professors
================================================================
In this project a personal Page for a Teacher/Investigator is created with RefineryCMS, based on Ruby on Rails. It is adapted for the Professor special needs.

Features
========

  - Preconfigured with **several sections** of interest for professors (see below).
  - Multilingual support: Admits **English** and **Spanish** versions of everything in the web (News, Articles, Books...). If there is only one language version of anything, it will be shown anyway, so the visitors don't miss anything. Easy switching between languages.
  - Configure **Main Photo**, name and Description in the Webpage.
  - Special **Hiking section** (as a request by the Professor as a personal hobby). In this section Hiking routes are described and can be easily navigated.
  
Sections
========
It is preconfigured to have this sections:

  - Home: Shows last news.
  - News: Publish any piece of news.
  - Articles: Articles published as an investigator.
  - Books: Books published.
  - Hiking: Special section for publishing Hiking routes. It can be easily hidden if not needed.
  - About: Shows all information about you as a Professor.

How to Install
==============
Download using git:


    git clone https://github.com/Luigolas/RefineryProfessor.git
    
Needs to have a Postgres Database configured and running.

Ruby Version used is 2.1.2 and Rails gem version is 3.2.17, although it may work with other versions.
As usual, run:

    bundle install

to install all dependencies. Run it with:

    rails s
    
Sample WebPage
==============
You can view it in action at [sfalon.es](www.sfalcon.es)

Author
------
This project is made as part of a collaboration scholarship granted by the University of Las Palmas de Gran Canaria. Created by [**Luis González Medina**](www.luigolas.com). 

Contact: luigolas@gmail.com
  
