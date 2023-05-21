
# blog  on Ruby 💎️ on Rails 🛤️ Project  

## What Exactly is This Repo:
```
I just Taking notes while assisting this awesome Udemy Course:

```
[The Complete Ruby on Rails Developer Course](https://www.udemy.com/course/the-complete-ruby-on-rails-developer-course/)

```
Learn to make innovative web apps with Ruby on Rails and unleash your creativity
from Udemy platform.
```

## Hello World to RoR!

Hi, this is all about **Getting Started with Rails** from [rubyOnRails.org](https://guides.rubyonrails.org/index.html) 👌

Yes. Why I love Ruby on Rails Rails is - It's powerful framework that can help you become more productive and confident, when working on complex projects.

Meet Ror

🐱‍ Why is Rails used? 🐱‍
```
The biggest advantage to Rails is that it makes web development quick and easy. 
This means a small team of developers can create a web app and deploy it quickly. 
The Ruby programming language ecosystem also provides libraries that can extend 
the Rails framework with even more pre-built features.


🥰️ Rails is quick and easy to learn 

🔒 Rails is Reassuringly secure

⛓ Rails is Exceedingly scalable.

```
Now feel yourself at ease; You're more then welcome to visit my Web Pages: 

 🧐[Jungletronics](https://medium.com/jungletronics) (Python, C, Arduino, RasPi, PIC, Eagle, Blender,  and more) 
 [KidsTronics](https://medium.com/kidstronics) (MIT App Inventor, Geogebra, LEGO, Pixy, Unity3D, Arduino For Kids, and more)
 
And my [Youtube Channel Playlist](https://www.youtube.com/playlist?list=PLK3PeNcUzb8TwZuXZJgREj5nDbQxRLW_a)

Or my old Atlassian,Inc. Repo: https://bitbucket.org/gilj3/
 
Where I Embrace Playful Experimentation, offering you an scaffolding opportunities to Code, Hack, 
and Tinker too, and eventually you may *toss me some feedback* :blush:

Here, the emphasy lies on this motto of the Maker Movement: :art:
```
Learning By Doing!
``` 

I believe that the essential lessons can be learned about the systems - about the world - 
from taking things apart, seeing how they work, and using this knowledge to create new and even more interenting things.

These are the [Levy, Steven(2010)](https://www.amazon.com/Hackers-Computer-Revolution-Steven-Levy/dp/1449388396)'s **Hackers Ethic** principles (that I've valued most):
* *Access to computer* - and anything that might teach you something about the way the world works - should be unlimited and total.
* Always *yield to Hands-on Imperative*!
* *Hackers should be judged by their hacking*, not bogus criteria such as degrees, age, race, or position;
* You can *create art and beauty* on a computer;
* Computer can *change your life for the better*.

Use 👉 [Google Colab](https://colab.research.google.com/notebooks/welcome.ipynb?hl=en_US) 👌 This is awesome, try it yourself!

>[Google Drive](https://drive.google.com/open?id=0B8iMbc-iQqlULW1HZXFiNnBEZUE) This gives you access to all the project's files. Please, search by # for artifacts, such as Code, Fritzing, Proteus, Schemas and more \o/




## Deployment

To deploy this project on vscode please folow this checklist:

### Check list:
0. [ ]  I am using `Ubuntu 22.04.2 LTS`  
1. [ ]  Go to `vscode` > `Source Control` (ctrl+Shift+G);     
2. [ ]  Press 🔘️ `Clone Git Repository to a Local Folder`; use:
        https://github.com/giljr/blog.git
3. [ ]  Choose a folder; mine is: `Documents/ruby/rails/`
4. [ ]  Press 🔘️ `Select as Repository Destination` and `open the cloned repo`;
5. [ ]  Install & Open `DBeaver` (https://dbeaver.io/);
6. [ ]  Go To Menu: `Database` > `New Database Connection` > `SQLite JDBC driver` > `next` > 🔘️ `Open`;
7. [ ]  Point to: `Documents/ruby/rails/blog/db/development.sqlite3`
8. [ ]  Select 🔘️  `Finish`;
9. [ ]  Select `USER` table view and confirm if `user.id = 1` was created;
10. [ ]  Exit from `DBeaver`;
11. [ ]  Go to models /`user.rb `file and please uncommet this code: 👉️ `has_secure_password`;
12. [ ]  On Terminal, run:
```
 rails db:migrate
 rails console
    user = User.create(username:"j3", email:"j3@gmail.com")
    user.save
    exit
  rails server
```
13. [ ]  Now browse to `localhost:3000` and 😍️ You Are Good To Go! 😍️;



[Would you like some more help?]()

## Tags
### [blog_v1](/../../tags/)
```
git tag -a blog_v1 -m "Blog in Rails - v1.0:  from http://jungletronics.com" 
                       -m "1- Use this release to get started with this project" 
                       -m "2- Folow the checklist from readme.md file" 
                       -m "Thank you for downloading this project 😍️"                       
 
git push origin blog_v1.
```
1. Go to tab tags to download this release
obs: Type this peace of code above in one line on terminal to create one :)

## Authors
- [@giljr](https://www.github.com/giljr)


## Contributing

- [@pomper](https://www.github.com/pomper)
- [@moschine](https://www.linkedin.com/in/luiz-felipe-batista-moschini-4938a0211/)
- [@jeovan](https://www.linkedin.com/in/jeovan-farias-6283b8145/)
- [@diego_nogueira](https://www.linkedin.com/in/diego-sousa-nogueira/)

Contributions are always welcome!

### License

[![License: CC BY-NC-ND 3.0](https://img.shields.io/badge/License-CC%20BY--NC--ND%203.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-nd/3.0/)
