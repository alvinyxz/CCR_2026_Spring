# 1. Discussion Topic: [Week 8] Readings[Week 8] Readings

Find the readings for the week at: https://z.umn.edu/J8500_Syllabus

The course is organized as a seminar, which means all students are expected to attend all classes, have read and thought about all readings prior to each class, and participate actively and productively in class discussion.

In general, before class, you should have carefully thought about: (1) how the computational methods used in each study helped address the specific research questions of interest to the authors, (2) in what sense these computational methods could extend conventional methods, (3) what are their major assumptions and limitations, and (4) what new arenas for future research these computational methods could open.

To facilitate discussion, each week, all students will submit (to the whole class and me) at least TWO thoughtful questions or comments of interest to you emerging from the week's readings. These discussion questions/comments should be posted to the "Discussions" section on Canvas (named "[Week X] Readings") at least 24 hours before the scheduled class meeting. You are also encouraged to read other students' questions/comments and reply to them. Regardless of whether you are the Reading Lead for a certain week's readings, you should still post to participate in the discussion.

Canvas Discussion & In-Class Participation will be evaluated based on: (1) the depth and quality of your contributions to the Canvas Discussion, and (2) the engagement and quality of your participation in class.

## 1.1. Anastasia Micich
Mar 6 12:08pm
| Last reply Mar 21 10:11pm

Reply from Anastasia Micich

(Vosoughi et al., 2018) — The study relies on tweets flagged by six fact-checking organizations. How might this introduce selection bias — are the stories that reach fact-checkers already unrepresentative of the broader misinformation ecosystem?

(Barbera et al., 2015) — I am interested in questions surrounding reach measurement. The authors acknowledge that their reach measure cannot confirm whether followers actually read protest messages — similar to a TV ratings caveat. Does this limitation undermine the core claim about the periphery's mobilization potential, or is potential exposure sufficient for the argument they're making?

### 1.1.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 10:11pm

Reply from Alvin Zhou
For the Vosoughi et al. question, I think we mentioned in class, and Emily also confirmed that this is actually a standard approach in misinformation research: relying on stories that have been fact-checked. One way to think about it is that fact-checkers typically focus on misinformation that has already reached a certain level of visibility and impact. If a piece of misinformation never spreads widely, its societal relevance is much more limited. Also, the paper examines information cascades, and to study them, you need content that actually circulates at scale. Using fact-checked stories ensures that the cases they analyze are meaningful instances of misinformation diffusion, rather than trivial or isolated content. Of course, this does introduce selection bias.

For the Barberá et al. question, I would frame this as a fundamental measurement constraint rather than a flaw specific to this paper. Measuring whether people actually read or pay attention to content is extremely difficult at scale. To do that, you would need very different methods: self-reports, eye-tracking, or even neurological measures, which are not feasible in large network studies. So the question becomes: is potential exposure sufficient? I think for their argument, it is. Their claim concerns the mobilization potential of network structure, not individual-level attention or cognition. As long as exposure is systematically related to network position, the relative comparison between core and peripheral actors still holds. Even if we assume that only a small proportion of followers actually see or engage with messages, that would likely scale down everyone similarly. So this limitation does not fundamentally undermine their core claim, it just means we should interpret “reach” as potential exposure (or inflated attention) rather than actual attention.

## 1.2. Namuun Tsegmid
Mar 10 9:51pm
| Last reply Mar 21 9:37pm

Reply from Namuun Tsegmid
Question 1:

Zhao et al. (2022) construct the poets’ social network by linking poets when one mentions another in poems or biographies, but the edges appear to be treated as undirected. However, many of these relationships seem inherently directional. For example, if a later poet mentions an earlier poet, that suggests influence flowing from the earlier poet to the later one.

Would modeling these ties as directed edges change how influence is interpreted in the network? For instance, distinguishing between incoming mentions (being cited by others) and outgoing mentions (citing others) might produce different measures of influence or prestige.

Question 2:

Barberá et al. (2015) measure reach by summing followers across participants, which means the same user may be counted multiple times if they follow several accounts. The authors justify this by arguing that repeated exposure may increase attention or mobilization, but this assumption is not empirically explored in the analysis. I’m wondering whether this methodological choice is also constrained by the type of data available, since the dataset includes follower counts but not the full follower network. If so, how might estimates of reach change if it were possible to account for overlapping audiences or unique users exposed?

### 1.2.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 9:37pm

Reply from Alvin Zhou
For your first question about directed vs. undirected networks, as we mentioned in class, I do think this is a real limitation of the study, and your intuition is correct. Many of these relationships are inherently directional. That said, if we zoom out, the dataset spans roughly 3,000 years, and most of the ties are likely structured in the same way of later poets referencing earlier ones. Because of that, even if you modeled the network as directed, I’m not sure it would fundamentally change the overall structure or the main findings.

For your second question, yes, this is largely an empirical data limitation. Their dataset includes follower counts but not the full follower network, so they cannot identify overlapping audiences. Ideally, you would want to count unique users reached, but that requires knowing exactly who follows whom across accounts, which is very difficult to obtain. In practice, collecting full follower networks is extremely resource-intensive. You would need to scrape each account individually, and for large accounts with millions of followers, this becomes almost infeasible. APIs typically do not provide this data in a clean, complete way. So their measure of reach, summing followers, is partly a pragmatic choice. And to be fair, from a common-sense perspective, if you ask someone how to estimate reach, many would intuitively say “add up the followers,” even though we know it double-counts overlap. So it’s not perfect, but it’s a reasonable approximation given the constraints.

## 1.3. Carolina Aguiar Da Silva
Mar 16 12:46pm
| Last reply Mar 21 11:31pm

Reply from Carolina Aguiar Da Silva
Gong et al., 2023:

Under what conditions is it justified to develop a new measure like VBI? With respect, but did the authors exhaustively review existing virality/diffusion metrics before proposing another one? How do journals typically evaluate new measures? Also, they define “eventful” weeks using the Gini coefficient on hashtag use. Doesn't this mix very different types of events (sports, protests, disasters) in one measure of “eventfulness”? At last, does the integration measure (average strength of links between users’ tweets) really mean “we’re all talking about the same thing,” or just “our words look similar in text”?

Barbera et al., 2015:

They collect tweets only containing protest-related hashtags and acknowledge that this “is likely to exclude many tweets related to the protest that did not mention one of the main protest hashtags” (page 3), but argue it “should not affect our results”. Under what conditions might hashtag-only sampling distort core–periphery structure or reach estimates (if core users systematically hashtag more than periphery, for example)?

### 1.3.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 11:31pm

Reply from Alvin Zhou
For your first question, this is actually very common in network research. Unlike standard regression settings where measures are more standardized, network studies often require context-specific metrics, so proposing a new measure (like VBI) is not unusual. For example, the Science paper we read introduced “structural virality” in a similar way. Journals typically evaluate new measures based on: whether existing metrics are insufficient, whether the new measure is conceptually justified, and whether it behaves sensibly (e.g., through validation or robustness checks). On the Gini-based “eventfulness,” you are right that it mixes different types of events (sports, protests, disasters). But that is actually consistent with their goal: they are not trying to distinguish event types, but to capture how concentrated attention is in the information environment. So “eventfulness” here should disregard the type of events.

For your question about integration, I would push back slightly. If people’s texts are more similar, that *does* indicate discursive convergence: people are talking about similar things in similar ways. It does not necessarily mean interaction or coordination, but it is still a reasonable operationalization of “integration” at the discourse level.

For your second question, this is a very good point. Hashtag-based sampling can introduce bias, especially if core users are more likely to use hashtags than peripheral users. That said, any data collection strategy requires a boundary. In practice, specifically for social media data, keyword search is usually noisier (low precision), while hashtag search is narrower but more precise. So using hashtags is often the most defensible and transparent approach, even if imperfect. And as you pointed out, if anything, this bias might mean the periphery is underestimated, so the paper’s conclusion that the periphery matters could actually be conservative, because a huge volume of peripheral people (who don't use the hashtag) is not counted.

## 1.4. Qiling Wu (she/her)
Mar 17 5:02pm
| Last reply Mar 21 9:14pm

Reply from Qiling Wu
Vosoughi et al., 2018

This paper is incredibly solid. Its dataset is massive, the validation is careful, and the diffusion analysis is systematic. I do have one question about how the authors measured the "novelty". This paper operationalizes “novelty” as the distance between topic distributions. I was really impressed by that way of measurement. Conceptually, how justified is it to equate an abstract psychological construct like novelty with statistical distributional distance? And could other abstract variables, such as credibility, extremity, also be measured through similar distribution-based approaches?

Zhao et al., 2022 

I really admire the creativity of this paper. The idea of reconstructing poets’ influence through citation networks is genuinely mind‑opening. I always assumed Li Bai and Du Fu would dominate any measure of “impact,” so discovering that Bai Juyi emerges as the most influential poet was a real surprise.

However, the paper’s measure of “influence” seems to capture social visibility rather than literary greatness. A poet who is widely mentioned, because of personality, social networks, or accessibility, naturally appears more “influential,” while more obscure poets are structurally disadvantaged. I asked why Bai would be the most influential poet in Tang dynasty, and I got answers like “Bai Juyi produced an exceptionally large volume of work, wrote in a clear and accessible style that others frequently quoted, enjoyed widespread fame during his lifetime, and maintained an extensive social and political network. These factors made him far more likely to be mentioned by other poets.” I know this is not the main focus of the paper, but I can’t help thinking that this measure of “impact” may systematically suppress poets who were less socially active. Since the network is built on how often others mention you, poets with smaller social circles or more solitary personalities naturally appear less “influential,” even if their literary achievements were extraordinary. In that sense, the metric reflects social visibility rather than pure artistic impact.

I was also impressed that the system could even extract an admiration relation from the “eating ashes” anecdote. But this also makes me worry about accuracy. Classical Chinese poetry and ancient wenyanwen（文言文） biographies are extremely abstract and difficult. I would say even many native speakers struggle to interpret them. If humans often cannot fully understand these texts, it is unclear how a machine relying on surface cues can do better. I understand that the system is only extracting information rather than “interpreting” poetry, but the task still seems incredibly complex. 

### 1.4.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 9:14pm

Reply from Alvin Zhou
As we mentioned in class, novelty is essentially newness relative to what came before (i.e., 60 days). Conceptually, I would argue that this is actually very intuitive. Novelty is inherently comparative, so measuring distance between distributions fits the construct quite well. More broadly, this idea (using distributional difference to capture abstract concepts) is quite flexible. For example, you could imagine measuring extremity in a similar way: if a piece of content is very far from what has been previously said, you could interpret that as “extreme.” In fact, the same metric could arguably be labeled differently depending on the theoretical framing. The key point is that the measure itself is not inherently "novelty”; it becomes novelty because the authors define and justify it that way. So in the end, it’s really about the fit between concept and measurement.

You could also implement a similar idea using word embeddings instead of topic distributions. For example, you could compute the average embedding of all content from the past 60 days and then compare a new tweet’s embedding to that average. The intuition is the same.

For the Zhao et al. paper, I actually think your point is correct, but it comes down to how we define “influence.” What the paper captures is clearly network influence, not artistic quality. These are not the same thing. A poet might produce the “best” work in a literary sense, but have little influence if no one cites or mentions them. Conversely, someone like Bai Juyi, who is widely cited and socially embedded, will appear highly influential in a network.

This is very similar to debates in the science-of-science literature: high-quality work is not always the most cited, and citation is often used as a proxy for influence rather than intrinsic merit. So I would defend the authors here, what they measure is consistent with a network-based definition of influence, even if it differs from “pure artistic impact.”

On the extraction issue, I agree that accuracy is hard to fully validate, especially with classical Chinese texts. But methodologically, what they are doing is actually quite simple. The key step is named entity recognition (NER): linking different aliases to the same poet. Then, they define a connection if Poet B’s name appears in Poet A’s text, and weight the tie by how often that reference occurs. So as long as the system correctly identifies names, the network will be constructed correctly. The limitation is that if a relationship is implied but not explicitly named, it will not be captured. That’s a structural constraint of the method, not necessarily an error.

## 1.5. Isabel Garlough-Shah
Mar 18 1:43pm
| Last reply Mar 21 11:06pm

Reply from Isabel Garlough-Shah
Barberá et al. ground their network analysis in two specific social movements for their three data sets. Admittedly I wasn't personally familiar with these social movements, which made me wonder about the ethics of case selection itself. When researchers choose which hashtags, movements, or trends to analyze, how do they ensure that sampling bias doesn’t occur? Mainly I'm curious whether there's an ethical or methodological obligation in computational social science to be more deliberate about how and why certain hashtags, movements, trends, or communities are chosen for study? Whether analyzing already-visible movements versus smaller-emergent ones raises different considerations?

In the Vosoughi et al article, I have methodological rigor questions about bot detection within the network analysis. Data in this study spanned from 2006 to 2017. In this time period bot detection and bot sophistication had to evolve to a significant degree. Would one advanced bot detection algorithm be sufficient in detecting all bots over time? Or would different iterations of algorithms need to be done to fully detect bot activity? Finally would this kind of bot detection algorithm be alerted to cyborg accounts that are mainly human operated?

### 1.5.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 11:06pm

Reply from Alvin Zhou
For your first question, I think part of this is just the historical context of the paper. Some of the movements they study are less recognizable now, but at the time they might have been reasonable cases. What the authors are trying to do is not to study one single movement, but to sample across multiple protest contexts to show that their argument generalizes. In practice, case selection in computational social science is usually driven by a mix of substantive importance (e.g., Occupy Wall Street, Arab Spring), data availability, and theoretical relevance. You are right that there is both a methodological and ethical dimension here. Methodologically, focusing only on highly visible movements may introduce bias (because those cases are already atypical (large, salient, highly mediated)). Ethically, studying smaller or emerging movements (especially in sensitive political contexts) can raise concerns about exposing vulnerable communities, even if the data are public. This is why most studies rely on aggregation and anonymization, but the trade-off you’re pointing to is real.

For your second question on bot detection, your intuition is correct. A single bot-detection algorithm is unlikely to be sufficient across a long time span like 2006–2017. Ideally, you would: use time-specific models or features, or at least test multiple detection strategies. In reality, bot detection is quite noisy and uncertain, as I mentioned in class. A more defensible approach—what I usually recommend—is: use multiple thresholds (e.g., 70%, 80%, 90% bot probability), re-run the analysis, and show that the results are robust across thresholds. That way, your conclusions are not overly dependent on a single, somewhat arbitrary classification rule.

## 1.6. Kaiyi Yu
Mar 18 2:09pm
| Last reply Mar 21 8:46pm

Reply from Kaiyi Yu
This week's readings are kind of challenging for me to understand, especially the methodology part. For Barberá et al. (2015), I don't quite understand how to calculate k-core decomposition. Gong et al.’s (2023) study is about two types of diffusion, broadcast and viral spreading, and their impact on discourse patterns, specifically segregation and integration. It is amazing to me that they can come up with these kinds of research questions and hypotheses that are especially macro- and structural-related. One thing I notice is that they use simulation studies as well as Twitter data analysis. Was the simulation study used for better testing of causal inference? Is the simulation study alone solid enough for this paper? In addition, I think the most highlighted part of this paper is that they develop operationalization and measurement of viral and broadcast index, and integration and segregation. They almost created the measurements themselves. I have similar questions as Carolina about why they propose new measurements and the validity of the newly developed measures. 

I found Zhao et al. 's (2022) study exploring the social network of Chinese poets is very interesting. They developed a new method TSEWM, which incorporated temporal factors. In this way, the weight of one dynasty was partially dependent on its weight in previous dynasties and the influence accumulated continuously, and this allows the calculation of poets’ influence over time. I also noticed that they used some experiments at the end. Are these experiments mainly used to test the validity of the new method TSEWN that they proposed? In this paper, the network analysis method was used in a quite inductive manner to examine the influence patterns of poets. Their analysis is very likely intended to introduce and test a new method in social science or poetry studies. However, their research questions do not seem very theoretically driven or strongly grounded. So I am curious whether the most important contribution of the paper is proposing a new method.

### 1.6.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 8:46pm

Reply from Alvin Zhou
k-core decomposition is a common technique to identify the core / most important actors in a network. I encourage you to look at Sandra González-Bailón’s Networked Discontent paper (optional reading this week), which has a very clear visualization of how this works. More generally, there are many ways to define “central” nodes in a network, and k-core is one of the more intuitive ones. In R, it’s also very straightforward with the coreness() function in igraph:
https://igraph.org/r/html/1.2.6/coreness.html

For the simulation question: I don’t see many communication papers that rely only on simulation. Usually, they combine simulation with empirical data. Simulation is useful because you can manipulate one variable and observe how it affects collective outcomes, which is helpful for thinking about causal mechanisms. But at the same time, simulation is not realistic. That’s why most papers pair it with real data. So no, simulation alone is usually not considered sufficient, but it strengthens the argument when combined with empirical analysis.

For the new viral/broadcast, integration/segregation measure: this is actually more common in higher-tier work, especially in network research. Standard measures like centrality or betweenness don’t always capture what the authors want to study, so they create custom measures. The key issue is not whether the measure is “standard,” but whether it is justified and appropriate for the research question. Validity, in this case, is largely an argument: authors define it, justify it, and then reviewers decide whether it makes sense. A good comparison is the structural variety paper in Science, where they also introduced a new measure that is conceptually similar to existing ones (e.g., betweenness centrality) but mathematically distinct.

For the Zhao et al. poetry paper: I’m also not very familiar with TSEWM, and that’s actually not the point of assigning the paper. The goal is to show what kinds of things can be done with network data, especially in unconventional contexts. This paper is not really theory-driven, and that’s okay. There isn’t much existing theory about the social networks of Chinese poets, so the contribution is more about empirical exploration and demonstrating a method in a niche context. More broadly, not all computational work contributes to theory or method in a strict sense. Some papers are valuable because they take a hard-to-study phenomenon, apply a defensible computational approach, and produce interesting insights. They may not fit neatly into theory-building or method development, but they still add value.

## 1.7. Jiarou Chen (she/her)
Mar 18 2:48pm
| Last reply Mar 21 11:14pm

Reply from Jiarou Chen
Gong et al. (2023) employ a multi-study design following the sequence of first simulation and then real-world data validation. From my understanding, they seem to establish a clean causal mechanism in a controlled network first, then validate the same pattern in real Twitter data in 2020. It's a bit different from some multi-study literature I encounter, which follows the logic of first using computational methods to describe a real-world phenomenon, then extracting concepts for an experiment to test causality. If testing the causality is the ultimate goal of research, why do the authors choose to use simulation first? If we reverse the sequence of the two methods, will that actually strengthen or weaken the paper's validity and narrative?

Zhao et al. (2022)

I'm wondering to what extent (or when?) the differences between the operationalization of a concept and the concept itself can be accepted in computational research. For example, this paper treated shi and ci as "poetry" and applied same citation weights and P(i) counts. For me, it causes ambiguity because the study used ci-specific terms like "graceful and restrained" and "bold and unconstrained" schools in Song section while still calling the network "Song poetry". Another example is the inclusion of Confucius. He is influential but actually didn't write any poems. So if literacy genres analyzed across different dynasties are different, can we still compare cross-dynasty influence difference of poets? Would it be better if we use a broader term like litterateur..?

The network seems only extract positive ties (kinship, friendship, admiration, citations), but it might ignore documented rivalries and criticisms. Could we consider sentiment-augmented weights to capture the nuanced meaning of influence? If we only marked positive ties, would this exaggerate the influence of poets?

### 1.7.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 11:14pm

Reply from Alvin Zhou
For your first question, this is a very good observation. I don’t think the order (simulation first vs. empirical first) fundamentally changes the validity of the paper. What changes is more about how the argument is presented rather than the strength of the evidence. If you reverse the order (empirical first, simulation second), the paper would read more like: “here is a pattern we observe, and here is a model that explains it.” That is also common. So I would treat this more as a stylistic or narrative choice rather than something that strengthens or weakens the paper in a fundamental way.

For your second question, your question about Confucius is a good one. Strictly speaking, he is not a poet, so including him in a “poetry network” is conceptually messy. A broader label like “Chinese classical literature” or “litterateurs” might be more precise. That said, if we consider classical literature, you might also need to include novels, essays, etc, which could get messy. Since Confucius quotes are usually short, you could technically say it is part of the poetry tradition. My sense is that in computational work, this kind of approximation is often tolerated, as long as it is acknowledged and does not fundamentally distort the conclusions.

On positive vs. negative ties, we discussed in class. In principle, you could incorporate sentiment (e.g., +1 for praise, −1 for criticism). But in practice, two issues arise: Data limitation: it is not always clear or reliable to classify mentions as positive vs. negative, especially in historical texts; Interpretation: even negative mentions can indicate influence. Being criticized still means being referenced and shaping discourse. There is a parallel in citation networks (papers are sometimes cited to be criticized, but citations are still treated as influence). So even if the network only captures “positive” or undifferentiated mentions, it may not be as biased as it initially seems. Overall, your instinct is right, that these are simplifications. But they are often strategic simplifications to make large-scale analysis feasible.

## 1.8. Eun Sun Kyoung
Mar 18 2:55pm
| Last reply Mar 21 10:54pm

Reply from Eun Sun Kyoung
1.

Clauset et al., 2015:

I have also talked with my friends about professor hiring in Korea. We noticed that many professors are not hired by universities that are more prestigious than their undergraduate (BA) institution. We discussed whether this happens because of school prestige, or because people from more prestigious schools actually have higher ability. For this reason, I found this paper very interesting and important. I also think it is a strong and legitimate point that the paper measures prestige without relying on authoritative rankings such as those by U.S. News & World Report.

However, when it comes to shedding light on the relative roles of merit and status, I wonder if the paper could have considered merit more as well.

The paper said “Strong inequality holds even among the top faculty producers: the top 10 units produce 1.6 to 3.0 times more faculty than the second 10, and 2.3 to 5.6 times more than the third 10. For such differences to reflect purely meritocratic outcomes, that is, utilitarian optimality of total scholarship, differences in placement rates must reflect inherent differences in the production of scholarship. Under a meritocracy, the observed placement rates would imply that faculty with doctorates from the top 10 units are inherently two to six times more productive than faculty with doctorates from the third 10 units. The magnitude of these differences makes a pure meritocracy seem implausible, suggesting the influence of nonmeritocratic factors like social status.”

However, I was wondering if this is an appropriate rationale. In faculty hiring, or in any kind of hiring, even a small difference in merit of candidates can matter. If candidates with doctorates from top 10 universities have even slightly higher merit on average, this could accumulate over time and lead to large differences in outcomes.

Because of this, I wonder whether research performance, such as the number of publications or the quality of publications, can be controlled for as confounding variables in this kind of network analysis.

2. 

Vosoughi et al., 2018: 

I found it very interesting that why false news traveled faster than true news was not explained by whether accounts spreading information followed more people, had more followers, tweeted more often, were verified, or had been on Twitter longer. I also thought the paper was rigorous because it tested novelty and emotions as alternative explanations. I am curious about what the paper means by novelty precisely (definition and operationalization it) and how it is relates with information theory and Bayesian decision theory. I was curious whether novelty simply means information that people did not know before, or whether it means something more surprising that goes against expectations and creates shock. I also want to understand in detail how the latent Dirichlet allocation topic model, as used in this paper, measures novelty.

### 1.8.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 10:54pm

Reply from Alvin Zhou
For your first question, I don't think the authors are really trying to resolve it. This paper (from 2015) is one of the early “science of science” studies, and its main goal is descriptive: to document the existence of a strong hierarchy. Could merit explain part of this? Yes, in principle. But the authors’ argument is more of a plausibility test: given the observed placement gaps, merit differences would have to be extremely large, which seems unlikely. So they use that as indirect evidence that status is playing a role. You are absolutely right that a more complete test would include controls like publications, citations, subfields, etc. But once you go there, it becomes very complicated very quickly. These variables are all highly correlated: ability, training, collaboration networks, and institutional resources, so disentangling them is extremely difficult. It turns into a “box of worms” problem. My sense is that the authors deliberately avoided that and instead made a clean, strong descriptive claim.

For your second question, “novelty” in Vosoughi et al. is actually much simpler than it sounds. It does not directly mean surprise, shock, or Bayesian updating. Those are more cognitive interpretations. Operationally, novelty = how different a tweet is from prior discourse. What they do is: Use LDA topic modeling to represent each tweet as a distribution over topics; Compute the distance between that tweet’s topic distribution and the distribution of tweets from the previous 60 days. If the distance is large, it means the content is more “novel” (i.e., less similar to what people have been talking about recently). So in this paper, novelty is really just newness relative to recent content, not necessarily psychological surprise.

## 1.9. Wenwen Cao
Mar 18 3:16pm
| Last reply Mar 21 11:21pm

Reply from Wenwen Cao
Zhao et al. (2022) cite Rashotte’s (2007) definition of influence as the phenomenon in which individuals change their thoughts, attitudes, or behaviors through interaction with others. However, in the empirical analysis the authors operationalize influence primarily through network centrality measures (e.g., degree, closeness, betweenness, eigenvector centrality).

I am wondering how we should interpret this conceptual link. Do centrality measures in the poets’ social network actually capture the kind of “influence” described by Rashotte, or do they instead measure structural prominence within the network? How convincing is this operationalization of influence? From my understanding, they did not measure the influence according to Rashotte’s (2007) definition because they did not thoughts, attitudes, or behaviors impacted by the poets. I’m wondering it might be better if they introduced a concept that is more closely related to their actual operationalization?

 

Vosoughi et al., (2018) measures how quickly true and false news spread by examining the time it takes for cascades to reach certain sizes or depths. However, diffusion speed may depend on external factors such as breaking news cycles, time of day, or platform activity levels. For instance, a rumor posted during peak hours may spread faster regardless of its content. How might temporal factors unrelated to content characteristics influence the observed differences in diffusion speed between true and false news?

### 1.9.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 11:21pm

Reply from Alvin Zhou
Regarding your first question, I actually share your concern. The link to Rashotte’s definition of influence is unconvincing in this context. That definition emphasizes changes in thoughts, attitudes, or behaviors through interaction; these poets are separated by hundreds of years, and they have no "interaction". What the authors are really measuring is closer to structural prominence or visibility in a network (e.g., being frequently mentioned, centrally positioned), rather than influence in a behavioral or causal sense. So conceptually, there is a mismatch. This kind of tension is quite common in computational research: we often rely on proxy measures because the true construct (like “influence”) is not directly observable. The key is whether the proxy is reasonable and clearly justified. In this case, I would say the operationalization is defensible as “network influence” or “cultural prominence,” but less so if we strictly follow Rashotte’s definition.

For your second question, you are right that diffusion speed can be affected by temporal and contextual factors like time of day, news cycles, or platform activity levels. But the paper takes a macro-comparative approach: it compares many cascades of true vs. false news and looks at overall patterns. The implicit assumption is that these external factors are either randomly distributed across true and false news, or averaged out across a large number of cascades. If that assumption holds, then the comparison is still informative. But if, for example, false news systematically appears at peak times, then that could bias the results. In principle, they could incorporate controls (e.g., time fixed effects) in a regression framework to address this. But the paper’s goal is not to isolate every possible mechanism (they didn't even do any regressions), it is to show a robust *aggregate* difference between true and false news diffusion.

## 1.10. Ruiheng (Rachel) Sun (she/her)
Mar 18 4:12pm
| Last reply Mar 21 9:45pm

Reply from Ruiheng (Rachel) Sun
I especially find Clauset et al.’s (2015) article interesting to study academic hiring hierarchy through a systematic network lens. I like how they develop proxy measures (correct me if I’m wrong about this) based on some basic network features in their operationalization. Some measures are adopted from previous literature, some are directly developed by authors. As authors indicate in their limitations, I have the same concerns about their measure of prestige, since it blends in many other confounding variables. For improvement on this measurement, I’m thinking whether it is possible to add more columns in their original data (e.g., locations) and control these variables?

I’m a little confused about how Gong et al. (2023) transform discourse into vectors in order to see how topics change over time. Their appendix does provide more details: “Each node was seeded with a vector of 100 semantic feature values, ranging from 0.0 - 1.0, that were randomly drawn from a uniform distribution. These values represented an individual node’s “discourse.” I was wondering whether the number “100” means (e.g., each dimension is different?) and why 100?

### 1.10.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 9:45pm

Reply from Alvin Zhou
I think adding new control variables definitely makes sense. But given that this is one of the first papers studying academic hiring networks at this scale, I think their main goal was more descriptive, to show that a clear hierarchy exists in the network. Explaining why that hierarchy exists is more of a next step for future research. For example, as we discussed in class, one extension would be to incorporate measures of scholarly quality, such as citation counts or publication records, and test whether prestige effects remain after accounting for those factors (maybe MIT people are actually publishing better studies and they deserve all the jobs). That would help disentangle whether elite institutions dominate because they produce stronger scholars or because of network-based advantages. So I do think your suggestion is valid, it’s just beyond the scope of what this paper set out to do.

For your second question about the simulation, I think this is a general issue with simulation studies. Parameters like “100 dimensions,” “10,000 nodes,” or “1,000 iterations” are often somewhat arbitrary but justifiable choices. The idea behind the 100-dimensional vector is (maybe?) simply to represent a high-dimensional discourse space, you can think of each dimension as a latent feature or topic. It doesn’t mean there are literally 100 meaningful dimensions; it’s more about having enough dimensions to approximate complexity. In practice, researchers pick values that are large enough to be realistic but still computationally manageable. As long as the results are not highly sensitive to those choices (which ideally should be checked), the exact number is less important. This also highlights a broader limitation of simulation: you have to set the world before you simulate it. Because of that, simulation can never fully capture real-world complexity, which is why papers usually pair it with empirical data rather than relying on simulation alone.

## 1.11. Jessica Tuleassi
Mar 18 9:51pm
| Last reply Mar 21 9:30pm

Reply from Jessica Tuleassi
Vasoughi et al. (2018)

This is an intriguing study that highlights the spread of false and true rumors. It is an interesting finding that false rumors spread farther, faster, broader, and deeper than true information. One particularly intriguing thing was the methodological robustness used in the study. Also, the fact that people who had fewer followers and followed fewer people were the ones who spread false information was surprising to me. Just like the authors, I assumed that people who were more active were more likely to spread false information.

1. Given that the novelty hypothesis suggests people share false news because it is more unique and conveys social status, and that falsehoods trigger specific emotional responses like surprise and disgust, what are the ethical and practical implications of shifting misinformation-containment policies away from technical bot-filtering toward behavioral interventions aimed at changing how humans perceive and share information? 

2. Additionally, if novelty drives sharing, how can we disentangle novelty from other factors like sensationalism or ideological alignment?

3. I understand this may extend beyond this week’s focus, but I’m curious about how computational research can be made more accessible to non-expert audiences. I sometimes find the technical language difficult to follow. What strategies can researchers use to communicate complex computational findings more clearly to the general public?

 

 

### 1.11.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 9:30pm

Reply from Alvin Zhou
For your first question, I actually don’t think the field sees misinformation primarily as a bot-driven problem anymore. The general consensus now is that humans play a central role in spreading misinformation. So shifting toward behavioral interventions is not really a “shift” away from bots. That said, I don’t think this paper alone can tell us what the right policy response should be.

For your second question, I agree that they are not really disentangling novelty versus sensationalism. Their measure, comparing a tweet’s topic distribution to the previous 60 days of discourse, captures “difference,” but that difference could be interpreted/framed in multiple ways. You could arguably call it novelty, but you could also frame it as sensationalism. In practice, these concepts are highly correlated, making it difficult to separate them empirically using this design.

For ideological alignment, I would treat that as a different level of analysis. Alignment is fundamentally about the relationship between a message and its audience. To study that, you would need to measure both the ideological leaning of the content and the ideological position of users who engage with it. That moves the analysis from a macro, discourse-level perspective to a more micro, user-level design. So it’s not something you can infer from the message alone in this setup.

For your third question about accessibility, I actually think papers published in venues like Science, Nature, or PNAS are among the more accessible ones, precisely because they are interdisciplinary. One of their requirements is that non-specialists should be able to follow the main argument. If you focus on the introduction and results, they are usually quite readable; the complexity is pushed into the methods and appendix. In general, the strategies are fairly straightforward: use analogies, rely on clear visualizations, and avoid unnecessary jargon. A lot of this comes down to how you package the findings, which we’ll also talk about more when we cover visualization.

## 1.12. Jikai Sun (he/him)
Mar 18 10:01pm
| Last reply Mar 21 9:56pm

Reply from Jikai Sun
I am particularly interested in the work of Zhao et al. (2022), which analyzed the social network of ancient Chinese poets. Constructing such a social network may require a very nuanced definition of edges. In this paper, edges are defined based on mentions in poets’ profiles and poems. That said, when considering the art form of poems, the influence of some poets on others is not necessarily reflected in explicit name mentions, but is also manifested in stylistic influence. For example, some poets may have a very strong influence on the following poets who write poems in a similar style. However, the following poets may not mention them in their poems. Moreover, some mentions may not reflect actual relationships, but are instead used for allusive purposes in poetry, which often serve to express emotions. Thus, I am wondering if the work could be further refined, particularly regarding the definition of edges, what kind of refinement would be appropriate? Large-scale analysis of poetic texts seems to be highly challenging.

For Clauset et al. (2015), I am interested in whether specifically focusing on hiring new faculty, like assistant professors, instead of both tenure-track and tenured faculty, would be better for this research question. My personal speculation is that the role of doctoral institutions is most significant in the case of new hirings. I feel that this topic could also be studied together with academic collaboration patterns. A shared institution is an important factor influencing academic collaboration, which is closely related to topics of academic performance and hiring.

### 1.12.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 9:56pm

Reply from Alvin Zhou
I think there are actually many different ways to construct networks in this context, and it really depends on what kind of relationship you want the network to represent. For example, what you suggested (capturing stylistic influence) could be done using something like word embeddings to measure similarity between poems. But that would give you a network of textual similarity, not necessarily a network of influence between poets. So the key issue is: what exactly is the network trying to measure? In that sense, the way Zhao et al. define edges (based on explicit mentions) actually makes sense for their purpose. Your point about allusive mentions is valid, but I would think about it similarly to citations in academic papers. Sometimes we cite work not because it directly influenced us, but for rhetorical or conventional reasons. Still, citations are widely used as a proxy for influence. By the same logic, if a poet chooses to mention another poet (even for allusive or expressive purposes) it still signals some level of recognition or salience. So while imperfect, it is a defensible operationalization.

For your second question, I agree with you. One way to extend the paper would be to run a moderation analysis, for example, constructing separate networks for assistant, associate, and full professors, and then comparing whether hierarchy effects differ across these groups. Your point about collaboration is also important. Collaboration networks are another well-established approach, and they are closely related to hiring, productivity, and prestige. In principle, you could integrate hiring networks with collaboration networks to study how institutional background shapes academic careers. The main constraint, as always, is data availability, but similar work has been done, for example, this week's reading has one paper using datasets from ICA.

## 1.13. Jiakun Liang
Mar 18 11:44pm
| Last reply Mar 21 10:45pm

Reply from Jiakun Liang
1. Gong et al. (2023): Although the authors define integration as the average weighted similarity among users' discourse, this operationalization raises interpretive ambiguity. Because network ties are constructed from textual similarity rather than observed interactions (e.g., retweets or replies), higher integration may simply reflect that they are talking about the similar topic rather than actual communicative connections or information flow between users. Therefore, does the construct "integration" truly indicate a more interconnected public discourse, or does it only capture the convergent attention to the same topic without meaningful interaction or information exchange among users?

2. Barberá et al. (2015): The authors use the k-core decomposition to identify core and peripheral participants by recursively removing nodes with low degree to reveal layers of interconnectivity within the network, but I am confused about whether this method truly reflects the roles of participants in the diffusion process, rather than only their structural positions. For instance, if I understand correctly, according to the method, a journalist with little interconnectivity within his networks but still be retweeted by a substantial number of users may be classified as peripheral, whereas a highly interconnected group (e.g., friends) may retweet each other but with limited actual influence on information diffusion may be classified core.

### 1.13.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 10:45pm

Reply from Alvin Zhou
For your first question, I actually think their operationalization of integration is appropriate for what they are trying to capture. “Integration” here does not mean interaction or direct information exchange (like retweets or replies). Instead, it refers to discourse convergence (whether people are talking about similar things in similar ways). So if users’ texts are semantically similar, that already indicates a more integrated discourse, even without direct retweet/reply ties between them. In other words, they are not trying to measure communication flow, but rather whether the content space is converging.

For your second question, it helps to go back to how they define k-core: “The k-core of a graph is the maximal subgraph in which every vertex has at least degree k. In our case, degree relates to the number of retweets made or received.” Even though the original network is directed, they effectively treat degree as total retweet activity (in + out) when computing k-core. Because of this, your example is less of a problem. A journalist who is widely retweeted would still have a high degree and thus be placed closer to the core. Conversely, a tightly connected but low-volume group would not necessarily reach a high k-core unless their retweet activity is sufficiently dense.

## 1.14. Quin Mudry Nelson (she/they)
Mar 19 10:36am
| Last reply Mar 21 10:04pm

Reply from Quin Mudry Nelson
1. In the Vosoughi et al. article, I found their findings around the emotions people expressed in the replies to true and false rumors really interesting and indicative of what people were more likely to do with the content. When false information is more surprising (which makes sense if the content is false) and disgusting, people are more likely to share it... but with true information, people found the content more sad but also expressed trust, joy, and anticipation -- though true information wasn't as likely to spread and didn't as quickly as false information. This is alarming, but ultimately the study is only descriptive in nature and can't get at any causal or underlying mechanisms (such as Twitter's algorithm) which is a major limitation. When it comes to tracking social networks online, how does "the black box" behind social media companies limit our ability to analyze social interaction on social media, and are there ways we can make the black box less opaque through these or other methods?

2. In the Clauset et al. article, I found their approach super interesting in that they didn't need to talk to anyone to come to their results. Though their findings seem self-explanatory, I would have been curious to see a few other factors considered aside from where academics are trained versus where they end up as faculty, such as who they publish with, what sub-field or topic areas they focus on and alignment with the department new faculty end up at. I think the method is interesting, but for taking a network analysis informed approach they didn't consider the deeper parts of social networks among researchers as to who and what they work on that often informs what institutions new graduates apply to. 

### 1.14.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 21 10:04pm

Reply from Alvin Zhou
I think you’re raising a really important point about mechanism. It’s possible that false information spreads not simply because it is false, but because it is more surprising or emotionally arousing, which then gets amplified by platform algorithms. In other words, the algorithm could be an intermediate factor.

We don’t observe, and the authors don't take into account how platforms rank or recommend content; it is difficult to separate human behavior from algorithmic amplification. One promising approach here is algorithm auditing, in which researchers track which content is recommended under controlled conditions. We’ve already seen examples of this in studies of YouTube recommendations, and this area is growing quickly. We’ll also revisit this more explicitly in the ethics section later in the course.

For the Clauset et al. paper, I think your intuition is right, but it also reflects what the paper is trying (and not trying) to do. Given that this was published in 2015, it is one of the early “science of science” papers, and its goal was primarily descriptive: to show that a hiring network exists and is hierarchical. All the factors you mentioned (collaboration networks, research topics, departmental fit, publication records) are absolutely relevant. But they quickly lead to a much more complex explanatory model. For example, publication quality affects hiring, but also depends on collaboration; collaboration depends on networks; networks may depend on institutional prestige, and so on. These variables are highly interdependent, which makes causal modeling difficult. So in a way, it was a strategic choice to focus on a clean descriptive result: there is a hierarchy, and it is highly unequal. That makes the contribution very clear and impactful. What you’re proposing (explaining why that hierarchy exists) is the kind of follow-up work that builds on this foundation.