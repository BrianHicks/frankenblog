---
title: State of Elm 2017 Results
date: "2017-07-27T11:02:00-05:00"
tags: ["elm"]
featureimage: "/images/nyc-by-anthony-delanoix.png"

---

The State of Elm 2017 results are here!
I first presented these as two talks, one to Elm Europe and one to the Oslo Elm Day.
I've embedded the Elm Europe talk below (it's shorter) but the [longer version](https://www.youtube.com/watch?v=NKl0dtSe8rs&feature=youtu.be) is on also YouTube.

{{< youtube BAtql6ZbvpU >}}

<!--more-->

## So&hellip; What's This Survey For Anyway?

The State of Elm survey takes the temperature of the Elm community.
What companies have Elm in production?
What are people's experiences when coming to Elm, and are they learning at decent pace?
What tools are popular, and which need help?

Last year's survey tried to find out if an Elm conference was possible.
Fast forward a year, and we've already had 3!
The community can take this data and make itself better.

By the way, [here are last year's results](TODO).

## This Year's Questions

This year, we asked these questions:

1. In which domain(s) are you applying Elm?
1. How long have you been using Elm?
1. How serious is your use of Elm?
1. What is your level of experience with functional programming?
1. What versions of Elm are you using?
1. What language are you "coming from"?
1. Where do you go for Elm news and discussion?
1. Do you format your code with `elm-format`?
1. What do you like the most about your use of Elm?
1. What has been the biggest pain point in your use of Elm?

There were 5 more questions, but they turned out to not be useful signals.
I've excluded them in this analysis.
For completeness' sake, here they are:

- In what industry are you using Elm? (got vague data due to vague question wording)
- What is your level of influence within your team? (almost everyone answered 10)
- Did you attend elm-conf US? (no bearing on other questions)
- Do you plan to attend Elm Europe? (no bearing on other questions)
- Any Other Comments? (more answers to other questions, which I incorporated into those questions)

## The Responses!

This year, 1,170 people responded to the survey!
That's almost double last year (614).

Where possible, I've combined the answers from this year and last year.
Sometimes the questions changed enough that this was not possible; when there is only one data set it represents this year's survey.

### In Which Domain(s) Are You Applying Elm?

![In Which Domain(s) Are You Applying Elm?](/images/state-of-elm-2017/domain.png)

These answers were proportionally the same, so we can compare them by roughly doubling the 2016 count.

The top response was Web Development in both years, which makes sense: Elm targets the browser, so that's where people use it.

But other than that, we don't have a lot of parity between the two years.
This may be down to question design.
We'll have to keep this constant next year to see if we get a similar shift with no question change.

### How Long Have You Been Using Elm?

![How Long Have You Been Using Elm?](/images/state-of-elm-2017/usage.png)

This year we separated "curious/learning" and "just started".
This is the difference between "what is Elm" and "OK, I've installed the editor plugins and started a project, what's next?"
When you combine these, they exceed the amount of answers for the next category ("under a year", the highest.)
There are a lot of people coming into the community!

Then after those, we have a strict time scale of under a year to over four years.
In these, each year has proportionally similar number of people gaining a year of experience each year.
This is an encouraging sign!
It means people stick with Elm, get value out of it, and stay happy.

### How Serious is Your Use of Elm?

![How Serious is Your Use of Elm?](/images/state-of-elm-2017/how-serious.png)

I modified the scale on this question, so I've chosen not to generate a year-over-year comparison.
Last year didn't have enough nuance; it only measured project kickoff to production.
It *didn't* measure things like side projects in production or internal production use.
This year, I added more categories to capture these distinctions.

The results surprised me: I expected to see some kind of curve with more people not in production, but that's not the case.
Instead, the three production-level responses add up to the biggest category (152 total).
Cool!

### What is Your Level of Experience With Functional Programming?

![What is Your Level of Experience With Functional Programming?](/images/state-of-elm-2017/experience.png)

This question resulted in a rough bell curve centered around 7 and with an outlier at 0.
It makes sense!
Almost nobody thinks they know *everything there is to know* about functional programming.
But if you don't know very much you're more likely to answer 0 than 1.
In other words, "I know nothing" versus "I know only a little".

Also of note: almost everyone who said they know Haskell answered 7 on this question.
You do you, humble Haskellers.

### What Versions of Elm Are You Using?

![What Versions of Elm Are You Using?](/images/state-of-elm-2017/versions.png)

Last year 0.16 was the latest version (0.17 dropped right after the survey ended.)

The number of people on the latest version hasn't changed much, relative to this year (about 4%.)

The upgrade from Elm 0.17 to 0.18 is taking place slower than that from Elm 0.16 to 0.17.
This is weird to me!
The 0.17 to 0.18 upgrade (some syntax and minor API changes) was much smaller in scope than 0.16 to 0.17 (removing `Signal` and `Effects`, with more syntax changes.)
You'd think people would move to 0.18 faster than they moved to 0.17!

The 0.17 to 0.18 has a weird reputation for being difficult, but it's really not!
You can use [`elm-upgrade`](https://github.com/avh4/elm-upgrade) to do most of the dirty work, then apply the rest of the API changes by hand.
There *are* legitimate reasons for not upgrading, but if you're not blocked by any of the changes then give one of those tools a shot!

### What Language Are You "Coming From"?

![What Language Are You "Coming From"?](/images/state-of-elm-2017/languages.png)

Hey, everybody knows JavaScript!
How about that!

Aside from the huge number of JavaScript programmers, the top 5 are Ruby, Python, Haskell and Java.

No functional language beside Haskell cracked the top 5.
I'm a little surprised by this: I had expected to see more people with functional programming experience.

It is notable that the top 3 languages all use dynamic typing systems.
We'll see later that Elm's static type system is a big draw for some people.

### Where Do You Go For Elm News And Discussion?

![Where Do You Go For Elm News And Discussion?](/images/state-of-elm-2017/wateringHoles.png)

Almost everybody uses the [Elm Slack](http://elmlang.herokuapp.com/) and the [Elm Subreddit](https://www.reddit.com/r/elm).
This correlates well with how long people have been using Elm: new users tend to be on the subreddit, while more experienced users are on Slack.
This is not a complete disconnect, but an opportunity for growth.
If more experienced users answer questions on Reddit, it will make a more welcoming environment for newbies.

And, if you *are* a newbie: get on Slack.
You'll find help much faster.
Part of that is because it's a chat instead of a message board, but there are also more people there.

Also notable: the [Elm Town podcast](https://elmtown.github.io/) had, at that point, had only a few episodes.
Despite that, it came in just under [elm-discuss](https://groups.google.com/forum/#!forum/elm-discuss).
Good job, Murphy, and keep it up!

### Do You Format Your Code With `elm-format`?

![Do You Format Your Code With elm-format?](/images/state-of-elm-2017/elm-format.png)

91% of people who have tried [`elm-format`](https://github.com/avh4/elm-format) prefer to use it.
If you haven't, give it a try!

### What Do You Like The Most About Your Use of Elm?

![What Do You Like The Most About Your Use of Elm?](/images/state-of-elm-2017/likes.png)

These responses are about what you'd expect.
Popular answers: the type system, great error messages, and the fact that it's a pure functional language.

There was one correlation that I want to point out!
Those people who answered that they were using Elm in production were much more likely to say that they enjoyed the refactoring experience.
Those who weren't, didn't.
The difference is pretty stark!
It's one of those things that you're surprised by, then kind of go "well, yeah, that makes sense."

### What Has Been the Biggest Pain Point in Your Use of Elm?

![What Has Been the Biggest Pain Point in Your Use of Elm?](/images/state-of-elm-2017/pains.png)

The top pain people have with Elm is with the learning curve, which is actually comprised of several smaller pains.
Those smaller pains are tagged as such (e.g. "Learning Curve (FP)".)
There were also some people who wrote only "learning curve", so it's a superset instead of a strict union.

Some specific detail about pains:

- **JSON Decoders**: This is one of those things that everyone has trouble with.
  I sure did!
  [So I wrote a book about them.](/json-survival-kit)
  They're not that bad once you get used to them!
- **JS Interop**: This was almost all ports, with a smidge of Native/Kernel code pain.
- **Package Ecosystem**: This was two main concerns.
  First, people not being able to find a package to do what they needed within Elm (e.g. slippy maps.)
  Second, people not having support for some web API they needed (e.g. Web Audio.)
- **Typeclasses**: There were very few mentions of people wanting to derive things here.
  The majority of respondents mentioned wanting some method to write interfaces.

## Love for Elm

It's a bummer to end on pains, so here are some nice things that people left in the survey comments for me:

> After 20 years of programming, Elm is my favorite language. :)

Mine too. :)

> Elm is the first language I actually get my side projects done [in]. Love it.

Tons of people have this experience! [Luke Westby talked about it at elm-conf 2016!](https://www.youtube.com/watch?v=wpYFTG-uViE)

> Elm Slack is excessively helpful. Can only recommend.

[Get on Slack. Get on Slack. Get on Slack. Get on Slack.](http://elmlang.herokuapp.com/)

## Conclusions

### If You're Stuck, ask in Slack.

How many times can I link to the Slack in this post?
Here are a couple more:
[Sign up for the Elm Slack. You won't regret it.](http://elmlang.herokuapp.com/)

Remember: **excessively** helpful.

### Listen to Elm Town!

If you're not listening to [Elm Town](https://elmtown.github.io/) yet, go give it a try.
A good entry point is the series of interviews with Evan Czaplicki about how Elm came to be the way it is.
You'll learn something, I can almost guarantee it.

### Upgrade to 0.18

It can be a big time investment to move some code bases to 0.18.
I know!
I'm doing it myself right now!
But the benefits are large enough that you should consider doing it.
Again, [`elm-upgrade`](https://github.com/avh4/elm-upgrade) is helpful here.

### Start an Elm Group Near You

There were a bunch of comments left saying something like, "I really wish there was an Elm/FP group/conference near me."
If you want to have one, start one!
I don't say this to be flippant!
It's personally rewarding, it will make the community around you better, and it will make you more valuable within it.
Plus&hellip;

### Finally, an Offer

If you're doing something out there in the Elm community, and having detailed data would be helpful, shoot me an email and I'll get you what you need.
This survey is a lot of work to run, but if I can help people out who need it, it makes it worth it.
You can get me at [brian@brianthicks.com](mailto:brian@brianthicks.com) or on the [Elm Slack @brianhicks](http://elmlang.herokuapp.com/) (had to get one more link in there!)

See you next year!
