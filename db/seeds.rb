# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: '{ name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


sections = Section.create([{name: "Pre-work: Web pages, command line, and reading"}, {name: "Ruby"}, {name: "PHP"}, {name: "Javascript"}, {name: "Ruby pre-work: Language basics and Sinatra"}, {name: "PHP pre-work"}, {name: "Javascript basics (homework)"}, {name: "Ruby on Rails"}])
Subsection.create(name: "HTML and CSS basics", section: sections.first)
Subsection.create(name: "Required reading", section: sections.first)
Subsection.create(name: "Command line and git", section: sections.first)

Subsection.create(name: "Behavior-driven development with Ruby", section: sections.second)
Subsection.create(name: "Object-oriented Ruby", section: sections.second)
Subsection.create(name: "Database basics", section: sections.second)
Subsection.create(name: "Databases with Active Record", section: sections.second)
Subsection.create(name: "Conventional syntax, partials, redirect, practice", section: sections.second)

Subsection.create(name: "Object-oriented PHP", section: sections.third)
Subsection.create(name: "Behavior-driven development with PHP", section: sections.third)
Subsection.create(name: "Database basics with PHP", section: sections.third)

Subsection.create(name: "Behavior-driven development with Javascript", section: sections.fourth)
Subsection.create(name: "Object-oriented Javascript", section: sections.fourth)
Subsection.create(name: "AngularJS", section: sections.fourth)
Subsection.create(name: "Ember.js", section: sections.fourth)
Subsection.create(name: "Javascript Week 5", section: sections.fourth)

Subsection.create(name: "Ruby basics", section: sections.fifth)
Subsection.create(name: "Ruby branching and looping", section: sections.fifth)
Subsection.create(name: "Sinatra", section: sections.fifth)

Subsection.create(name: "PHP basics", section: sections[5])
Subsection.create(name: "PHP branching and looping", section: sections[5])

Subsection.create(name: "JavaScript basics", section: sections[6])
Subsection.create(name: "jQuery", section: sections[6])
Subsection.create(name: "JavaScript Branching and looping", section: sections[6])

Subsection.create(name: "Introduction to Ruby on Rails", section: sections[7])
Subsection.create(name: "Rails with AJAX", section: sections[7])
Subsection.create(name: "Consuming and creating APIs", section: sections[7])

Lesson.create([{name: "Learn how to program", subsection: sections[0].subsections[0]},
               {name: "Text Editor", subsection: sections[0].subsections[0]},
               {name: "Block elements", subsection: sections[0].subsections[0]}])

Lesson.create([{name: "Eat your spinach", subsection: sections[0].subsections[1]},
               {name: "Growth mindset", subsection: sections[0].subsections[1]},
               {name: "Making Epicodus an inclusive place", subsection: sections[0].subsections[1]}])

Lesson.create([{name: "Command line", subsection: sections[0].subsections[2]},
               {name: "Using Git", subsection: sections[0].subsections[2]},
               {name: "Git cheat sheey", subsection: sections[0].subsections[2]}])

Lesson.create([{name: "Interfaces before implementation", subsection: sections[1].subsections[0]},
               {name: "BDD in plain English", subsection: sections[1].subsections[0]},
               {name: "Red, green, refactor", subsection: sections[1].subsections[0]}])

# Lesson.create([{name: "", subsection: sections[1].subsections[]},
#                {name: "", subsection: sections[1].subsections[]},
#                {name: "", subsection: sections[1].subsections[]}])
#
# Lesson.create([{name: "", subsection: sections[].subsections[]},
#                {name: "", subsection: sections[].subsections[]},
#                {name: "", subsection: sections[].subsections[]}])
# Lesson.create([{name: "", subsection: sections[].subsections[]},
#                {name: "", subsection: sections[].subsections[]},
#                {name: "", subsection: sections[].subsections[]}])
# Lesson.create([{name: "", subsection: sections[].subsections[]},
#                {name: "", subsection: sections[].subsections[]},
#                {name: "", subsection: sections[].subsections[]}])
# Lesson.create([{name: "", subsection: sections[].subsections[]},
#                {name: "", subsection: sections[].subsections[]},
#                {name: "", subsection: sections[].subsections[]}])
