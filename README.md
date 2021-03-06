# Expert Search

### Requirements

The application should fulfill the following requirements:

* A member can be created using their name and a personal website address.

* When a member is created, all the heading (h1-h3) values are pulled in from the website to that members profile.

* The website url is shortened (e.g. using http://goo.gl).

* After the member has been added, I can define their friendships with other existing members. Friendships are bi-directional i.e. If David is a friend of Oliver, Oliver is always a friend of David as well.

* The interface should list all members with their name, short url and the number of friends.

* Viewing an actual member should display the name, website URL, shortening, website headings, and links to their friends' pages.

* Now, looking at Alan's profile, I want to find experts in the application who write about a certain topic and are not already friends of Alan.

* Results should show the path of introduction from Alan to the expert e.g. Alan wants to get introduced to someone who writes about 'Dog breeding'. Claudia's website has a heading tag "Dog breeding in Ukraine". Bart knows Alan and Claudia. An example search result would be Alan -> Bart -> Claudia ("Dog breeding in Ukraine").

We encourage the use of any libraries for everything except the search functionality, in which we want to see your simple algorithm approach.


### Completed Tasks
* members table - name, website, short_url
* friendships table - a join table member to member
* tags table - member_id and header text
* member - create new, list member, show member
* async task to shorten url via tinyurl
* async task to scrape headers from website

### Incomplete Tasks
* Ability to Add Friends
* Expert search with path of introduction

### Run in Development
* In one console, run `rails jobs:work` to start the delayed jobs worker.  See https://github.com/collectiveidea/delayed_job
* start by going to http://localhost:3000/member
