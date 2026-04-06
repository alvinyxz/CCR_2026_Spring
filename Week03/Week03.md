# 1. Discussion Topic: [Week 3] Readings[Week 3] Readings

Find the readings for the week at: https://z.umn.edu/J8500_Syllabus

The course is organized as a seminar, which means all students are expected to attend all classes, have read and thought about all readings prior to each class, and participate actively and productively in class discussion.

In general, before class, you should have carefully thought about: (1) how the computational methods used in each study helped address the specific research questions of interest to the authors, (2) in what sense these computational methods could extend conventional methods, (3) what are their major assumptions and limitations, and (4) what new arenas for future research these computational methods could open.

To facilitate discussion, each week, all students will submit (to the whole class and me) at least TWO thoughtful questions or comments of interest to you emerging from the week's readings. These discussion questions/comments should be posted to the "Discussions" section on Canvas (named "[Week X] Readings") at least 24 hours before the scheduled class meeting. You are also encouraged to read other students' questions/comments and reply to them. Regardless of whether you are the Reading Lead for a certain week's readings, you should still post to participate in the discussion.

Canvas Discussion & In-Class Participation will be evaluated based on: (1) the depth and quality of your contributions to the Canvas Discussion, and (2) the engagement and quality of your participation in class.


## 1.1. Carolina Aguiar Da Silva
Feb 3 12:02pm | Last reply Feb 6 3:32am

1) Bail et al., 2018

I think the article is very interesting and useful for understanding how messages on social media affect people. About the backfire effect, which we still do not fully understand, I think one problem may be that the “treatment” was only defined as following a bot that retweeted 24 messages per day, without explaining what kinds of topics, tone, or framing these messages had. If the bots had been built using specific keywords, the authors might have been able to see which styles of messages create more backfire. Would it be possible to do this kind of keyword analysis, and if so, which computational method would be best?

After reading Ohme et al. (2023), I think working with DTD could have been a good idea for Bail to create hypotheses like “Backfire is higher when the bot’s messages are more negative and moralized” or “Backfire is more common when the messages deal with sensitive topics, such as race and immigration.” Does this idea make sense?

1) Robertson et al., 2023

I noticed that exposure and engagement are usually analyzed separately, which makes sense for understanding where belief reinforcement comes from, whether in politics or misinformation. But shouldn’t we also try to understand how people actually receive these messages? What is the impact of these two tracks on the receiver’s thinking and cognition? That way, beyond knowing which messages people see and which ones they choose to read, we would also understand why. This could help in designing new messages that are better able to overcome resistance.

### 1.1.1. Alvin Zhou

On Bail et al.: yes, in principle, you could combine the experiment with text analysis of the retweeted messages, for example keywords, tone, moral language, topic, etc.. That would be interesting, and methods like dictionary approaches or supervised text classification could work. That said, I think in this paper it would mostly end up as a supplementary analysis. The core story of Bail et al. is about the treatment itself: what happens when you follow out-partisan elites, not about fine-grained message effects. They’re operating at a higher, more structural level. Also, even if you coded message characteristics, I’m not sure they have enough participants (or enough variation in exposure) to really test whether specific message features moderate the treatment effect. Your idea absolutely makes sense, though, and it’s a good instinct. and it’s worth checking the appendix to see whether they did anything like this there.

On your second question: you’re putting your finger on a key limitation of a lot of computational work that I also mentioned in my response to another student. Computational scholars tend not to focus on how people experience or interpret messages, because once you care about cognition, perception, or meaning, you’re back to surveys, self-reports, or interviews. We’re seeing more studies that combine tracking data with surveys, but it’s still hard, expensive, and imperfect. The “bread and butter” of computational research is still what’s observable: exposure, clicks, time, networks, etc., rather than what’s happening in people’s minds. Bridging that gap is important, but it usually requires mixed-method designs rather than computation alone.

## 1.2. Qiling Wu (she/her)
Feb 3 11:01pm | Last reply Feb 6 1:10am

For Zhou et al. and Robertson et al., they rely on large-scale computational measures (domain-level classifications, exposure logs, engagement traces). Across these readings, exposure to misinformation /news is treated as an important outcome, yet exposure does not necessarily translate into belief, misperception, or sharing behavior. How should we interpret findings about who is exposed to misinformation if exposure alone does not indicate harm, and what does this mean for how we design interventions?
Sometimes I feel that my understanding of computational methods limits the kinds of research questions I can imagine. When I read studies that rely on large-scale observational data, such as digital trace data capturing exposure and engagement, I find myself wondering: what kinds of questions are these methods especially well suited to answer, and what kinds of questions might they discourage us from asking?

### 1.2.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 6 1:10am

Your second question is especially insightful, and I think it touches on something important about how we learn computational methods. The best way to conduct a computational study is after you've taken this whole class, ideally, after reading broadly across the field so you have an overall understanding of what computational methods can and cannot do, and then starting a computational project. (Of course, since this is still a class, we still have assignments and a final paper, so we're learning as we go!)

The key insight is that computational methods are not 100% suitable for studies that naturally rely on self-report. If you want to know about belief or misperception, you have to ask people, which falls back into traditional measurement approaches. CSS focuses more on what is observable: behavior, exposure, engagement, rather than internal states like belief.

But I want to push back gently on the framing of your question. You write: "Sometimes I feel that my understanding of computational methods limits the kinds of research questions I can imagine." This is true, but it's also true for every method. Quantitative social science limits what kinds of questions you can imagine answering (you need measurable variables, sufficient sample sizes, you can only quantify people on 1-7 scale, etc.). Qualitative social science limits what kinds of questions you can imagine as well (you need access to rich narratives, interpretive depth, but sacrifice generalizability). The method you know shapes the questions you ask.

The important thing is to recognize that different methods enable you to do different things, and each has its affordances and constraints. Computational methods open up certain questions (about scale, networks, temporal dynamics) that were previously impossible to answer, while making other questions harder (about meanings and subjective experience). The goal isn't to master one method, but to understand the toolbox well enough to match the right method to the right question.

## 1.3. Kaiyi Yu
Feb 4 11:25am
| Last edited Feb 4 11:27am
| Last reply Feb 6 1:03am

This week’s papers are somewhat interconnected, talking about information exposure, echo chambers, polarization, or so on.  From the titles of these articles, I had some sense that they might somehow contradict each other, offering either pessimistic or optimistic implications regarding echo chambers and polarization issues, but when delving into the articles, I realized that they actually raised quite related questions but differed with nuances. While Guess (2021) explored differences in news exposure between partisans, Robertson et al. 's (2023) study compared Google search exposure and engagement, and Bail et al. (2018) focused on the effects of exposure to information from opposing parties. They really had different focuses and thus came up with different conclusions and implications for democratic discourse and the information marketplace. Many articles on echo chambers or filter bubbles seem to lie within the U.S. context, as do the articles required this week. This makes me wonder how these questions can be designed to be studied in other cultural or political contexts where polarization may not apply. 

Concerning the method, I found the retweet bots used to conduct field experiments in Bail et al. (2018) rather interesting. One challenge to me is that they had a complicated process to decide which tweets from which officials or candidates to retweet. I think it would also be interesting to combine the experiment with screen tracking to investigate participants’ responses to opposing views by measuring their interaction and engagement with the retweets by the bots.

After reading these articles, another digital trace data type still remains quite mysterious to me. How do we use the data donation method? How do we access individual participants and ask their consent to share their dataset stored on social media? This makes me feel like a really effort-consuming and sample-biased process, just as we qualitative people gather convenience samples for interviews. Is the data donation method always combined with other methods such as surveys, or accessed through other third parties or technologies to make the data more accessible?

### 1.3.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 6 1:03am

Great idea! Technically, I think we can do this now. My own study has both surveys and screen tracking enabled, so if we added one more component where participants/panelists are encouraged to follow something, I think it would be a strong design: https://dl.acm.org/doi/abs/10.1145/3687046

However, it's also technically and financially challenging to execute. I wrote about these challenges in this paper: https://www.tandfonline.com/doi/abs/10.1080/00913367.2024.2403613

On data donation: If you're interested in how to use data donation methods, there are actually quite good tutorials. Look at Theo Araujo's work:

https://www.aup-online.com/content/journals/10.5117/CCR2022.2.001.ARAU

https://datadonation.eu/software/port/

https://link.springer.com/article/10.1007/s11135-024-01983-x


Data donation does require substantial effort for recruitment and consent, and it does tend to produce convenience samples, similar to qualitative interview recruitment. However, the PORT framework Araujo and colleagues developed provides infrastructure to make the technical aspects more accessible. You're right that data donation is often combined with surveys to provide additional context and to help with participant recruitment and retention (if you are already reaching out to individual participants requesting their data, why not add a survey to it, right?)

## 1.4. Jiarou Chen (she/her)
Feb 4 12:07pm
| Last edited Feb 4 3:39pm
| Last reply Feb 6 3:12am
View History

1) Bail et al., 2018

The interesting design of this article is to control the participants' exposure to information of different political parties by having a bot forward real posts from Democratic or Republican members. Since the bot forwards posts rather than creating them itself, for the participants, they only randomly come into contact with information of different political parties, which might be more in line with the real situation. Moreover, the weekly survey can ensure that the participants effectively participate, remember the posts with the opposite stance of their own, and may effectively avoid them recalling the contents filled in the previous survey, thereby avoiding affecting the score of political polarization (for me, the time interval seems long enough?)

Q: Can we consider participants behavior after they are exposed to information from opposing viewpoints, maybe in order to alleviate this cognitive dissonance? For instance, will they read more posts that align with their own stance? Or will they read more posts that differ from their own stance? Could this potentially dilute or amplify the effect of political polarization caused by individual users' posts exposure? Therefore, could it also be considered to measure the participants' exposure to general political content (posts with the same views; different views) as a control variable?

Another factor that might also have an impact but is relatively less significant could be: Are the posts made by Republicans necessarily more conservative, and are those made by Democrats necessarily more democratic? Perhaps it could also be considered to analyze the ideology tendencies of these posts, but it might be an overly extensive and not very necessary task==

2) Zhou et al., 2023

The data in this article includes the time spent on the website, but it seems to be mainly used to compare the differences in news content consumption between consumers with more diverse ideologies and those with more uniform ideologies. I am further curious: among consumers with more diverse ideologies, is the time spent on unreliable content approximately the same as, or significantly less than, or significantly more than the time spent on reliable content? Are there any differences in demographic variables?

(There is another unrelated question. I feel that the articles I have come across on computational communication studies seem to focus mainly on the field of political communication. Is it because this field introduced computational methods earlier and the topics it covers are particularly well-suited for computational methods, or are there other reasons?)

### 1.4.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 6 3:09am

On Bail et al.: I really like your idea of looking at what people do after being exposed to opposing views. The limitation of that paper is they rely heavily on self-reported survey outcomes, because they don’t actually have any behavioral tracking data. They don’t actually know what else participants saw on Twitter, or whether exposure to opposing views changed their broader consumption patterns. Today, I think you could absolutely imagine a follow-up design that combines a similar intervention with tracking or data-donation data matched to surveys, to see whether people compensate (by consuming more like-minded content) or explore more cross-cutting content.

Your point about whether Democratic posts are always “liberal” and Republican posts always “conservative” is also valid. In theory, you could code ideological content more precisely, but at some point it becomes a tradeoff between design complexity and feasibility. I think the authors opted for a cleaner partisan signal rather than a more granular ideology measure.

On why so much computational communication work focuses on political communication, I’ll jot down on what we discussed in class.

First, there’s a historical reason. Communication as a field really grew out of propaganda, public opinion, and mass persuasion research, think of World War I and II, governments trying to understand how media shapes attitudes and behavior and honestly how it can control publics. So politics and news were at the center of the field from the very beginning, and political communication scholars have long occupied a central position within communication research, and when there are new tools that are fancy / resource-dependent, the rich get richer.

Second, there’s the origin story of computational social science itself. A lot of early computational work came out of network science and complex systems, people like Duncan Watts, Steven Strogatz, and others, who were interested in social movements, diffusion, collective behavior, and large-scale social processes. Those questions are very naturally tied to political events and political communication. This is also when a lot of scholars started using Twitter data to study protests, revolutions, and political mobilization.

Third, there’s a strong disciplinary overlap with political science, which adopted computational approaches relatively early. Scholars like Gary King, whose work we read last week, were pioneers in bringing large-scale data, new measurement strategies, and computational thinking into the study of political behavior. That influence carried over very directly into political communication, especially around elections, media effects, and misinformation.

Fourth, there are very practical reasons: data and funding. Political data is often publicly available, government-funded, and framed as serving the public interest. That makes it much easier to access voter files, legislative speeches, court records, or election-related data than, say, Google or TikTok advertising data. It’s also easier to justify funding when the topic is democracy, polarization, or misinformation. If I say I want to study advertising so Amazon can make more money, that’s a much harder sell to most funders.

At the same time, and I mentioned this in class, because political communication is now so crowded with computational work, it’s actually harder for new scholars to stand out there. Doing computational research in areas like health communication, science communication, or strategic communication can sometimes make it easier to carve out a distinctive niche. There’s always a tradeoff.

## 1.5. Anastasia Micich
Feb 4 1:59pm
| Last reply Feb 6 2:25am

Guess (2021)

I always think the research surrounding echo chambers is so interesting, because it was the thing everyone was talking about 7 years ago, and people seem to have realized that the research indicates that other forces are driving a lot of the impacts we thought echo chambers and selective exposure were having online. This specific quote stuck with me: "Another challenge inherent to the study of selective exposure is simply that researchers are aiming at a moving target: The pathways by which people encounter information online evolve quickly, such as the shift from visiting homepages to relying on links from social media" (p. 1009). This is actually a really interesting point, because even in the last decade, the presentation of information online has shifted drastically. While this paper was published in 2021, I think this is a really apt observation considering the impact that LLMs have had on the presentation of information. My question for this paper is how could something like this be observed and analyzed computationally in how information is presented to users of LLMs, if that is even currently possible? 

 

Zhou et al. (2025)

I thought this paper in particular had some really interesting findings that in turn ask a lot of follow up questions. While the computational analysis found the connection that more well-informed people are often exposed to more misinformation. This is of course a pretty bombshell finding, and so I am curious what are the next steps to further explore this correlation found in this study. What questions should researchers be asking to look more into this phenomenon, and how does that translate into more computational analysis to further determine the "why" question? 

### 1.5.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 6 2:25am

On the Guess point: I think that quote has aged really well. The idea of “aiming at a moving target” is even more true now with LLMs. Methodologically, this is hard to study. I haven’t seen many strong auditing papers on ChatGPT yet, partly because access is limited and the system keeps changing. There is an NBER preprint called “How People Use ChatGPT” that’s worth a look.

On Zhou et al.: I agree this is an observational finding that really needs a follow-up. A natural next step would be to manipulate something like political interest or curiosity to see whether it’s driving both ideological diversity and misinformation exposure, as we mentione din class. Right now the paper shows a strong correlation; the “why” question needs a different design.

## 1.6. Wenwen Cao
Feb 4 3:13pm
| Last edited Feb 4 3:14pm
| Last reply Feb 6 3:26am
View History

In Robertson et al. (2023), the authors present a nuanced way to disentangle the effects of Echo Chambers and Filter Bubbles—a distinction I found particularly interesting and innovative, especially since I had previously viewed these concepts as so similar and overlapping that they were difficult to separate. However, even with this clearer conceptual distinction, I am still confused about one aspect of their findings: If users’ own choices are central to echo-chamber explanations, and the study shows only weak associations between partisanship and exposure but stronger associations with users’ click behavior, how do the authors still justify the conclusion that Google Search plays a role in directing users toward partisan or unreliable news?

Reading this alongside Haroon et al. (2023) and Zhou et al. (2025) raises a broader question about how different computational designs assign responsibility between users and platforms. Robertson et al. emphasize user choice by comparing exposure and engagement on Google Search, Haroon et al. attempt to isolate algorithmic influence using trained sock puppets on YouTube, and Zhou et al. rely on large scale browsing panels that capture outcomes but not the process of content surfacing. Given these different approaches, how should we interpret seemingly conflicting conclusions about whether algorithms or users play the dominant role in shaping exposure to partisan or unreliable content? More generally, to what extent do these differences reflect genuine platform effects versus differences in what each computational method is able to observe?

Another question may not relate to the research, but I’m really curious about it: Many computational communication studies are published outside traditional communication journals, such as Nature and PNAS. I’m wondering what factors are taken into consideration when choosing publication outlets (e.g., traditional communication journals vs. others). What does each type of outlet tend to focus on?

### 1.6.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 6 3:22am

I don’t think Robertson et al. are actually blaming Google Search or saying that it strongly “directs” users toward partisan or unreliable news (?). If anything, their core finding is almost the opposite...

On your broader question about users vs. platforms: based on the literature I personally trust, there’s a growing convergence toward the idea that users play the dominant role through self-selection. Audit studies with sock puppets (like Haroon) do show that platforms can matter, but the effect sizes tend to be much smaller than the user-choice side. Different methods assign responsibility differently mostly because they see different parts of the process. Some observe exposure, some observe engagement, some observe recommendations, but none of them see the full system end to end. As I mentioned in my reply to Jikai, each study is like a small star lighting up part of a very dark sky. Context, platform, timing, and design matter a lot, and no single study can settle the debate.

On outlets: we discussed this in class too, and I think there are both very practical reasons and deeper, more paradigmatic ones. On the practical side, two big factors are visibility and speed, according to some of my colleagues. Journals like Nature or PNAS are general-interest outlets. In principle, your grandma could read them, and that’s exactly the point, they attract attention far beyond a single discipline, including journalists and policymakers. Publishing there often leads to much broader public visibility. These journals also tend to have much faster review timelines compared to most communication journals, which can matter a lot, especially for work on fast-moving topics like misinformation, platforms, or elections.

But beyond that, there’s a more fundamental paradigm issue. Computational social science is built around a value system that prioritizes things like scale, methodological novelty, measurement innovation, and generalizable patterns. That value system aligns very well with what journals like Nature, PNAS, or Science tend to reward. Traditional communication journals, on the other hand, often emphasize different things: theoretical positioning within communication traditions, conceptual contribution to the field, and engagement with existing communication literatures.

Because of that mismatch, some computational papers that are seen as strong or even groundbreaking in science journals would honestly struggle in communication journals, not because they’re “bad,” but because reviewers are trained to look for different signals of quality. In many cases, it’s less about the topic and more about how the contribution is framed and evaluated. So it’s not that one outlet or one paradigm is better than the other; they’re just operating under different value systems and expectations.

That tension is something computational communication scholars constantly have to navigate when deciding where to send their work.

## 1.7. Jikai Sun (he/him)
Feb 4 4:47pm
| Last reply Feb 6 1:48am


This week’s readings are mainly about political communication, covering topics like the echo chamber, polarization, selective exposure, etc. Some of the results challenge traditional understandings of media selection of individuals with different partisanship. For example, as suggested by Robertson et al. (2023), exposure to partisan news is more often achieved through active searching than through passive algorithmic recommendation. Guess (2021) argues that there is a great overlap in media diet between people with different partisans. Most individuals’ media diet is moderate, and the echo chamber may only exist among a small group of people. 

Based on this, the first question, one that has also troubled me for a long time, is how we should understand findings that challenge existing theories or prior research. On the one hand, new studies often differ substantially from earlier work in terms of research design, context, methodology, sampling, and other factors, and it is hard to precisely identify where the discrepancies in results come from. Such inconsistencies seem to be quite common across many fields.

Another question is about the research performed by Bail et al. (2018). Their research suggests that for people of different partisans, being exposed to opposing views also leads to polarization. Meanwhile, as the echo chamber suggests, we may also tend to agree that if individuals immerse themselves in a media environment with similar views, the polarization may also increase. Combining these, is it possible that the polarization may mainly be caused by other factors, and actually mass media exposure doesn’t have much influence, unless there is long-term intervention or a major event? 

### 1.7.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 6 1:48am

On understanding contradictory findings: I think it's always helpful to understand research studies as stars on a dark night. Each paper illuminates one small thing, and they're constrained by their context. For example, a study about Twitter might not extend to Facebook; Facebook may not extend to web browsing; web browsing might not extend to Google Search; and Google Search may not extend to generative AI use. The study designs are so different, experiments vs. observational studies, different time periods, different platforms, different measures. I think reading this week's readings, you may feel like every study's findings make sense, they're not 100% contradictory to each other. Basically, these are stars illuminating certain parts of the sky, while the sky in general is still too dark, because as social scientists (or as human beings), we still know very little about the social world. It sounds kind of pessimistic, but I think this is actually a realistic and useful analogy. The key is to ask: What are the boundary conditions of each finding? Under what circumstances does each result hold? Rather than seeing contradiction, each study tells us something true about its specific context, and our job is to understand when and where each finding applies.

On media's role in polarization: That's actually a very good question, and it's one that scholars are increasingly debating. There's a growing perspective that media (or should I say, mainstream traditional media) is not really the primary driver of political polarization. People used to blame partisan media like Fox News or MSNBC, but the evidence is actually quite mixed. Some scholars don't blame media at all, they think polarization is due to social change, demographic sorting, economic inequality, and other non-communication or non-media-related issues. In this view, media only reflects polarization; it doesn't cause it. Magdalena at UC Davis has done some work on this. Look for her papers as well.

## 1.8. Isabel Garlough-Shah
Feb 4 5:39pm
| Last reply Feb 6 2:52am


Within the readings this week it was fascinating to read all the various ways algorithms, filter bubbles, and echo chambers were studied using computational methods to further investigate political polarization. In the Bail (2018) and Robinson (2023) article, the methods were multipronged and combined online surveys with computational methods (field experiment on Twitter with data mining vs. observational digital-trace study). Based on the similarities and differences between these methods, something I was curious about was if online surveys are a standardized addition in computational methods concerned with participant behavior? Furthermore, does the addition of online surveys within computational methods increase internal validity? 

Next I had questions about the Haroon (2023) article. In this piece, researchers utilized a systematic audit of YouTube using 100,000 “sock puppet” accounts which ultimately automate and mimic users by watching YouTube videos and gathering recommendations. To me this sounded similar to bots, and I was wondering where the differences and similarities are between bot accounts and sock puppet accounts? Within computational methods is there a purposeful difference between these types of accounts or it is simply based on researcher preference?

### 1.8.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 6 2:52am

On the survey point: this is partly a historical shift in how computational studies are done. Around 2015–2016, it felt kind of magical just to have large-scale passive tracking data from companies like Comscore or Nielsen, you got what they offered, like a subscription service, and that alone could support a strong paper. But you didn’t really get to customize things (e.g., adding surveys whenever you wanted). By the early 2020s, more researchers started building their own infrastructure and recruiting their own participants, which made it much easier to combine tracking with surveys. So surveys aren’t a “required” component of computational work, but they’ve become much more common because they help link behavior to attitudes and interpretations, which does help with internal validity.

On bots vs. sock puppets: conceptually, they’re basically the same thing, as we mentioned in class. The difference is mostly connotation and use case. “Bot” often sounds bad because we associate it with spam or manipulation, but you could imagine “good bots” too (e.g., correcting misinformation). “Sock puppets” is usually the term used in auditing studies to emphasize that the accounts are meant to observe systems, not influence other users. But also I feel like people are increasingly wary of any kinds of bot study: https://www.science.org/content/article/unethical-ai-research-reddit-under-fire

## 1.9. Quin Mudry Nelson (she/they)
Feb 4 6:21pm
| Last reply Feb 6 2:20am

1) I have a more so discipline-specific question, since I am less familiar with communication journals and terminology -- what is the difference between measuring engagement and exposure, especially through choosing shares, views, or impressions? Does a share (measure of engagement) assume that the person read the content they are sharing (i.e., an external news article on Facebook with a catchy headline)?

I am curious if there are studies about how often people actually read the entirety of the articles or posts they share, or if they are sharing based on other aspects...such as the title, the original poster who may align with their ideology/political views (a "trusted source" or messenger), or the caption/comment attached to an external link. Are people sharing things they actually don't read or engage with on a deeper level compared to a view or impression where people are exposed to certain narratives or information on a surface level? This is talked about a little bit in the Zhou et al. article where the consequences of overestimating people's engagement by using shares is discussed as a reason the authors opted for exposure.


2) I noted that the articles this week generally "pick their lane", either using desktop/web user data (Guess, Robertson et al., Zhou et al.), or mobile/social media data (Bail et al., Haroon et al., though YouTube can be used on both.) One of the articles also mentions how there aren't methodologically sound ways to properly compare desktop/web data and social media data -- I was curious why this is or what fundamental problems exist when trying to compare. Anecdotally, I would presume that most people don't use solely one or another of these devices but both. The impacts of polarizing content on mobile social media might be interacting with what people encounter on their desktop device. With LLM chatbots like ChatGPT, Gemini, etc. also in the mix, I think it's even more important now than ever to look at how these different sources of information are affecting people's ability to formulate a shared sense of reality and truth in our society.

### 1.9.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 6 2:20am

On exposure vs. engagement: you’re right to be suspicious of how casually we treat these as cleanly separable. In practice, exposure is often the lowest-stakes, lowest-resolution signal: a URL appears in a browsing log, a post shows up in a feed, a video autoplays for two seconds, etc. That’s also why “impressions” in industry reporting often feels so superficial, coz an impression can mean “it technically crossed your screen,” not “it changed your mind.” Engagement usually implies some active behavior, clicking, liking, commenting, sharing. But here’s the annoying part: even “engagement” doesn’t necessarily mean cognitive engagement. A share does not reliably imply reading, and a click doesn’t imply comprehension, as we said in class. In other words, our behavioral traces are often better at measuring contact with information than interpretation of information.

On your second point about device/platform “lanes”: you’re noticing a real limitation of the current evidence. It’s not that scholars think people live in one lane, it’s that data access and cost force us into lanes. Doing one platform well is already expensive and technically hard (recruitment, consent, infrastructure, privacy protection, compliance with platform policy, etc.). Doing multiple platforms, while also linking them to surveys, ideology, outcomes, and time, becomes a “small lab’s budget vs. Big Tech” problem pretty quickly. I think we will see more multi-platform work soon. There’s often a publication delay here (the Andy Guess 2021 paper was circulating in draft form back in 2018), and the broader direction of the field is clearly toward linking trace data, surveys, panels, and (sometimes) screen tracking. The “LLMs in the mix” point is also spot on, but I haven't seen many papers auditing the use of ChatGPT. I know of a paper called "How People Use ChatGPT" in the NBER preprint. You can take a look.

## 1.10. Eun Sun Kyoung
Feb 4 6:30pm
| Last edited Feb 4 6:55pm
| Last reply Feb 6 2:41am
View History


1. I think sock puppet is a very innovative and objective method for learning and understanding how algorithms, including YouTube's recommendation system, work. I understand that Haroon et al.(2023) used a sock puppet to see how YouTube's recommendation system works objectively, so they did not use the recommendation system and just trained sock puppets by making them watch 100 videos. However, I wonder whether YouTube's recommendation system is based on whether users watch the videos recommended by YouTube, not just on the watched videos history. Of course, video volume matters for YouTube's recommendation system. However, I wonder whether the flows, the way people watch videos, such as what they watch after which videos, and which recommendation videos they clicked or did not, for a longer time, matter as well. How could we examine this with a computational method?

2. Bail et al.(2018) is also an awesome work that used a field experiment to demonstrate the effect of cross-cutting exposure, controlling the willingness to voluntarily be exposed to the opposing party's opinion. However, there are situations in which we are unintentionally exposed to the opposing party's opinion, and we examine it carefully, intentionally, and voluntarily for several reasons, such as curiosity. How can we measure this unintentional exposure, but intentional watching or reading situation (without any compensation used in this study) using computational methods?

3. Freelon (2018) addressed what I was wondering. How illegal and unethical web scraping is a difficult problem. Also, the advent of AI made it more difficult. If we analyzed the data we scraped from the web using LLMs, Gen AI, is that illegal? For example, we can access free online news and read it. However, we can't use (post, sell, publish) the article without permission because it has news copyright, even though it is free news. But is content analysis also a violation of copyright?

### 1.10.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 6 2:41am


On the sock puppet: you’re right that YouTube’s system almost certainly responds not just to what you watch, but how you watch: order, clicks on recommendations, dwell time, what you ignore, etc. The issue is that, as researchers, you have to make some sacrifices to get a clean research design. Haroon et al. very intentionally standardized behavior so they could isolate one mechanism. If you start layering in lots of different viewing paths, the design quickly becomes unmanageable. As we talked about in class, there’s a tradeoff between realism and control in audit studies: fully standardized sock puppets (w no training at all) vs. real users or even data donation, which are more realistic but come with huge variation, weaker internal validity, and much less non-representative sample. The paper does acknowledge this as a limitation.

On the Bail question: I’m not sure your question directly maps onto Bail et al. One way to study “unintentional but curious” exposure would be to recruit liberals and observe their visits to conservative sites (and vice versa), using browser tracking or data donation, basically designs similar to Guess, Robertson, or Zhou this week.

On copyright and scraping: this is a genuinely hard and unsettled area. As we discussed in class, scraping raises consent and ethics issues, especially when people don’t know they’re being studied (similar in audit studies as we mentioned in class about discrimination in hiring etc). Using LLMs to analyze scraped text doesn’t magically solve that. In practice, researchers rely on principles like public interest and minimal harm: whether the knowledge gained outweighs the potential harm. It’s very much a gray area, not a clear legal yes/no.

## 1.11. Ruiheng (Rachel) Sun (she/her)
Feb 4 6:55pm
| Last reply Feb 6 1:38am


I think Ohme et al.'s (2024) article is insightful in discussing where researchers can collect data in the Post-API age, and also provide some practical ideas for this class's project. 

This week's topic covers several interesting elements of digital platforms, such as algorithm. Both Bail et al. (2018) and Guess (2021) challenge the widespread assumption that Americans live in the live chamber of political content and news, and conclude most people consume moderate content. Results support how polarization could be formed and intensified through exposing to opposite opinions. Because Bail et al. (2018) focus on Twitter while Guess (2021) examines general websites, I wonder whether platform choice plays a substantial role in shaping these findings. I think Twitter may be inherently more conflict-oriented than other online environments.

This week's readings also show some examples about how computational methods could extend conventional methods. For example, Guess's (2021) article links survey data with digital trace data, which uncover individual-level mechanisms underlying large-scale behavioral patterns (also a very good idea!). Additionally, I found the field experiment on Twitter from Bail et al. (2018) fascinating (maybe because it's not common in my area). I do wonder whether their treatment is "clean" enough, for example, they should also assign a task to the control group to answer some questions each day.

### 1.11.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 6 1:38am


On Bail et al.'s findings: I don't think Bail et al. is really about whether "Americans live in echo chambers" though. Bail et al. is an experiment that tests what happens when you expose people to opposing views. You're right that these two papers differ in platform and approach, which makes them hard to directly compare. Bail et al. uses Twitter to test causal effects through an experiment, while Guess uses observational web browsing data to describe patterns of consumption. They're answering different questions.

"I do wonder whether their treatment is 'clean' enough, for example, they should also assign a task to the control group to answer some questions each day." This is a good observation, you're right that they should have given the control group similar daily tasks (like answering questions about non-political content) to control for attention effects or task compliance. In the overall scope of things, I think this is a relatively minor limitation, but it's still worth noting. The main treatment effect is the exposure to opposing political content, and that's what varies between conditions, but you're right that differential attention could be a confound.

## 1.12. Namuun Tsegmid
Feb 4 7:28pm
| Last reply Feb 6 1:32am


This week’s readings were informative in terms of Digital Trace Data (DTD) collection, and they shared common themes in journalism research, particularly polarization, ideology, and misinformation.

I found the discussion of data donation and tracking in Ohme et al. (2024) especially interesting, and I would like to better understand the mechanics of cleaning these types of data for analysis. For example, Robertson et al. (2023) used web browser tracking to examine users’ exposure to partisan news compared to their engagement with it. This made me wonder how irrelevant or noisy data are removed and what the overall data handling process looks like before researchers arrive at an analyzable dataset. Are there established protocols or steps for filtering these data, and how are unused data stored or deleted, especially given the massive volume of information involved?

Relatedly, Ohme et al. (2024) emphasized the importance of legal and ethical considerations when using DTD. This raised questions for me about how these concerns apply to auditing methods, which Dr. Zhou discussed in class, and which we also encountered in this week’s readings. In particular, Haroon et al. (2023) used sock puppets to mimic YouTube users in order to study recommendation systems. I am curious about the ethical and platform policy constraints involved in using sock puppets for research. What should researchers be aware of, and what precautions should they take, when using auditing methods to answer their research questions?

### 1.12.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 6 1:32am

Quick clarification: I don't think this is journalism research, it's really political communication research. Journalism research typically studies news production, newsroom practices, and journalistic norms, whereas these papers focus on news consumption, political exposure, and polarization.

On data donation: If you're interested in learning more about data donation methods, there are some excellent resources available. Check out Theo Araujo's work:

https://www.aup-online.com/content/journals/10.5117/CCR2022.2.001.ARAU
https://datadonation.eu/software/port/
https://link.springer.com/article/10.1007/s11135-024-01983-xLinks to an external site.

On screen tracking data cleaning and storage: The Robertson data is screen tracking data, which is different from data donation. The data is very messy usually, and studies like this typically need a computer scientist or PhD student with computational expertise involved, because it requires database structure management, different API calls, data storage, and server management. Researchers will usually keep all the raw data on a server, and then when they're conducting analysis, they use SQL queries to extract the data they need. There aren't really standardized protocols, each study develops its own data processing pipeline depending on what they're measuring. The "irrelevant" data (like non-news browsing) typically stays in the database but is filtered out during analysis using SQL queries. Given privacy concerns, the raw data is usually stored on secure servers with restricted access and is subject to IRB protocols about data retention timelines.

On auditing ethics: Regarding auditing methods, you're right that ethics is always a tricky question, not only in computational research, but in social science more broadly. As we discussed in class, there are studies on employment discrimination where researchers send multiple CVs with different names, or my own example about receiving different emails from prospective students. It's always a tricky balance. I think one central principle is whether the study's implications/benefits are greater than the risks. Some questions to consider: Does the research address an important public interest question? Are there alternative methods that don't involve deception? What are the risks to the platform, to users, and to the research team? Is the deception proportionate to the knowledge gained? Also, I think auditing big companies like YouTube and Facebook seems less ethically problematic than auditing smaller platforms or individual users, because these platforms are so influential in the public interest: their systems shape our information environment and democracy. There's a stronger public interest justification for understanding how their algorithms work, even if it requires methods like sock puppets.

## 1.13. Jiakun Liang
Feb 4 8:27pm
| Last reply Feb 6 2:31am


1. Both Bail et al. (2018) and Haroon et al. (2023) design bots as standardized experimental instruments to devliver repeated exposure. Specifically, in Bail et al. (2018), robots were designed and trained to send participants' tweets everyday, while in Haroon et al. (2023), sock puppets were trained to watch a fixed number of videos whthin specific political ideology. However, to my knowledge, some social media platforms are increasingly incorporating bot detection which uses AI and machine learning to to identify, track, and remove fake or manipulative accounts. Therefore, to what extent or under what conditions, using such manipulative social media accounts may risk triggering the bot-detection system, which might prevent researchers from observing anything at all?

2. Zhou et al. (2025) measured the reliability of news exposure by rating the credibility of news and information websites using a 0–100 scale based on existing criteria. The article mentioned that "websites with a score <60 points receive a red rating, which means that they are deemed to generally fail to meet basic standards of credibility and transparency and can be considered as unreliable sources". I am confused about why why the threshold of 60 was selected as the cutoff for classifying websites as unreliable and reliable, and how sensitive the results are to alternative cutoff points. Additionally, the study operationalizes exposure to misinformation based on visits websites labeled as "unreliable". However, not all the information contained in the "unreliable websites" are fake news. Therefore, to what extent does classification based on websites represent actual exposure to specific content?

### 1.13.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 6 2:31am


First, on bots: the “bots” in Bail et al. and the sock puppets in Haroon et al. aren’t really the same as the bots people usually mean with a negative connotation. These are researcher-controlled accounts (that are controlled by scraping scripts basically). Also, small correction: Haroon et al. is not an experiment, it’s an audit study. There is always some risk of triggering platform detection, but it’s lower than what you may assume. And if accounts do get flagged, researchers sometimes can (and do) reach out to platforms to explain the research context.

On the Zhou et al. cutoff: the 60-point threshold comes directly from NewsGuard, which rates domains on a 0–100 scale and defines <60 as failing basic credibility standards. You can actually install the NewsGuard browser extension yourself to see these ratings in action. I honestly don’t remember if I reported sensitivity analyses using different cutoffs, that’s a fair thing to question.

And you’re absolutely right about the last point: an unreliable website "domain" does not mean every piece of content on there is fake. This is a limitation of domain-level classification, it’s a proxy, not a content-level truth claim. If you’re interested in this issue, you should take a look at Green et al. (2025) on curation bubbles, which gets at this problem more directly. I mentioned this paper in another response to students.

## 1.14. Jessica Tuleassi
Feb 4 10:15pm
| Last reply Feb 6 1:24am


This week's readings were particularly interesting to me as someone who wants to learn more about political communication and digital media. 

Robertson et al. said that "We did not conduct a power analysis before either study wave because of a combination of budget constraints, uncertainty around how many survey participants would opt in to installing our browser extension..." (p. 349). I am simply curious about the decision not to do a power analysis. It is my understanding that conducting a power analysis is free and helps determine the sample size needed to detect small, medium, or large effects. Given this, is it methodologically justifiable for researchers not to conduct a power analysis due to budget constraints? Alternatively, should they still conduct one and then justify any smaller achieved sample size based on financial limitations?

Robertson et al. also combine multivariate regression analysis with Kruskal–Wallis H test and  Spearman’s rank correlation.  Under what data conditions or assumption violations would researchers choose the Kruskal–Wallis H test and Spearman’s rank correlation? I am also curious about how exposure on Google Search was measured, especially in cases where exposure is more prevalent on social media than on Google Search. This stems from Zhou et al.'s article when they talk about how, "for instance, incidental exposure is less prominent on the web than on social media: most news consumption on the web results from intentional news seeking" (p.1530). 

Additionally, it is interesting that Zhou et al. found that people who are exposed to higher levels of news and have more news diets are the ones who are more likely to access unreliable sources. Might this reflect the tendency of politically interested individuals to seek out a wider range of perspectives, including those from less reliable outlets?

 

I also liked Bail et al.'s paper on how cross-cutting exposure can lead to increased political polarization. Yes, contact theory highlights that when people are exposed to ideas of opposing groups, they become more tolerant. However, when it comes to politics, the opposite seems to be true.  I also appreciated how they preregistered their study. This adds a layer of transparency to the work. One thing I found lacking in the study is that we don't know which kinds of content the participants were exposed to. They highlight this in their study: "...future attempts to reduce political polarization on social media will most likely require learning which types of messages, tactics, or issue positions are most likely to create backfire effects and whether others—perhaps delivered by nonelites or in offline settings—might be more effective vehicles to bridge America’s partisan divides." I am curious whether these results would differ when considering participants’ gender and race. For example, are male Republicans more likely to exhibit greater polarization when exposed to cross-cutting content?

 

### 1.14.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 6 1:24am


On power analysis: I think the power analysis question likely came from a reviewer, and the authors didn't know how to address it well, so that's how they wrote it. The tricky part is that the request for power analysis comes from traditional experimental social science, where researchers run experiments on Qualtrics and do power analysis to determine how many participants they need to recruit. Robertson et al.'s study is slightly different because of the nature of their budget constraints. This kind of research requires substantial infrastructure investment, I can tell you from experience that you can easily spend $30000+ on studies like this, just for infrastructure, participant compensation, etc. So their participant recruitment is really driven by "how much can we afford?" and "how much seems like enough to get into a good journal?"
Also, much of the research in this space hasn't been done before, so we don't have good estimates of effect sizes. Power analysis in these cases is essentially "calculating things out of thin air": even if you do one, it doesn't mean much because you're making assumptions about effects you've never measured. It's not going to change how you recruit participants or your study design. That said, I agree they could have done some post-hoc power analysis to report what effects they were able to detect given their achieved sample.

On Kruskal-Wallis H test and Spearman's rank correlation: Both tests are actually very common and both are non-parametric tests. Basically, they ignore the true numerical values and instead focus on the rank order of values, because their parametric counterparts (ANOVA and Pearson correlation) have stricter model assumptions about normality and homogeneity of variance. This is really a statistics question, and I think it would be good for you to take a stats class or watch some YouTube tutorials to learn what these tests mean and when they apply. I remember during my PhD years, I had a cheat sheet about when to use each different method, there are many: ANOVA, MANOVA, Kruskal-Wallis H, etc.

On confounding in Zhou et al.: As we discussed in class, yes, in the Zhou study there are definitely some confounding variables that are driving both DVs (news consumption and misinformation exposure). Political interest or curiosity is likely the underlying factor.

On gender/race analysis in Bail et al.: Your last question is a really good critical question. I'm actually surprised now, looking back, that they didn't do a supplementary analysis for this. they definitely have that data. Maybe they did it, didn't find any significant results, and didn't report it. Or maybe they didn't think to examine it. Either way, it's a missed opportunity for understanding heterogeneous treatment effects.