# 1. Discussion Topic: [Week 5] Readings[Week 5] Readings

Find the readings for the week at: https://z.umn.edu/J8500_Syllabus

The course is organized as a seminar, which means all students are expected to attend all classes, have read and thought about all readings prior to each class, and participate actively and productively in class discussion.

In general, before class, you should have carefully thought about: (1) how the computational methods used in each study helped address the specific research questions of interest to the authors, (2) in what sense these computational methods could extend conventional methods, (3) what are their major assumptions and limitations, and (4) what new arenas for future research these computational methods could open.

To facilitate discussion, each week, all students will submit (to the whole class and me) at least TWO thoughtful questions or comments of interest to you emerging from the week's readings. These discussion questions/comments should be posted to the "Discussions" section on Canvas (named "[Week X] Readings") at least 24 hours before the scheduled class meeting. You are also encouraged to read other students' questions/comments and reply to them. Regardless of whether you are the Reading Lead for a certain week's readings, you should still post to participate in the discussion.

Canvas Discussion & In-Class Participation will be evaluated based on: (1) the depth and quality of your contributions to the Canvas Discussion, and (2) the engagement and quality of your participation in class.


## 1.1. Anastasia Micich
Feb 14 11:11am
| Last reply Feb 19 10:36pm

Reply from Anastasia Micich
I did the Walter & Ophir RLA, and was really interested in the idea of a standardization of frames computationally. Deductively finding frames potentially offers validity to a lot of inductive research done in this field. I had a few discussion questions for thought before class on Thursday: 

If human interpretation is still required in the computational analysis, is the bias really reduced? Have we just relocated the bias to a different stage of the analysis? 
Could this research be extrapolated to computational analysis of survey or experimental research? 
How could cross-contextual research benefit from this methodology? 

### 1.1.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 19 10:36pm

Reply from Alvin Zhou
On whether bias is really reduced: as we discussed in class, that’s a fair skepticism. Computational methods do not eliminate bias; they can relocate it into preprocessing decisions, model selection, labeling, and interpretation. There are certainly cases where scholars hide behind algorithms without sufficiently interrogating their choices.

But that does not mean the method is inherently flawed. Just like qualitative or quantitative research, there are rigorous and non-rigorous ways to do it. Transparent documentation, reporting alternative specifications, showing robustness checks, and clearly explaining interpretation decisions are what make computational work credible. When done well, topic modeling allows scale and systematic analyses that traditional methods cannot achieve. So it’s not bias-free, for sure.

On applying this to surveys or experiments: yes, there are clear extensions. In experiments, computational methods can analyze treatment stimuli or participant-generated text. I mentioned in class the 2014 AJPS paper that integrates computational methods into experimental research (open-ended responses). You might also look at Nelson’s work on computational grounded theory, which explicitly combines topic modeling with qualitative interpretation.

On cross-contextual research: this is harder. If you mean cross-national or cross-linguistic research, translation is one common strategy, but that introduces its own distortions. Even within the same language (e.g., U.S. vs. U.K.), usage patterns differ, and co-occurrence structures may not align perfectly. That will complicate interpretation significantly. One approach is to model corpora separately and compare structures at a higher level. But yea, you got me... Most of my own work has been U.S.-focused, so I don’t have a fully developed solution here.

## 1.2. Carolina Aguiar Da Silva
Feb 16 5:30pm
| Last reply Feb 19 11:25pm

Reply from Carolina Aguiar Da Silva

Barbera et al., 2019

I understand the article treats tweets as a good snapshot of the public's priorities overall, saying that "the issues Americans discuss on social media are highly correlated with other measures of issue salience such as the MIP survey question" (p. 884). What would be another strategy or a complementary one to check if citizens' tweets really measure the public agenda? For example, by combining Twitter with other opinion or behavior data sources?

I also get that the article focuses a lot on tracking attention over time, but admits that "it cannot rule out confounding by unobservable factors" (p. 884) and that outside shocks can hit politicians, media, and public all at once. Should we add context variables explicitly (like big events, crises, and natural disasters) to the model to better figure out who truly leads the agenda?

 

Mukerjee et al., 2023

The article finds that engagement metrics have a statistically significant, but small and short‑term effect on how many topics are covered on Facebook in the future. How can we then check whether this “small and quick” effect really matters for shaping the public agenda, instead of being just very short‑term noise in newsroom routines? What are the practical implications then?

### 1.2.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 19 11:25pm

Reply from Alvin Zhou
On your first question about tweets as a proxy for the public agenda: The strategy Barbara used and cited is to correlate tweet volume on specific issues with independent survey measures of issue salience. If spikes in tweet attention track survey-based salience over the same period, that strengthens the argument that Twitter reflects (at least partially) the public agenda. You could also triangulate with search data (e.g., Google Trends?), petition data, or other things I cannot think of off the top of my head. But the more independent sources converge, the stronger the validity claim.

On adding contextual variables (e.g., major events): in principle, yes, including event indicators could help address common shocks. If the Olympics or a natural disaster drives simultaneous attention among media, politicians, and publics, controlling for that could clarify directional relationships. But remember, Barberá et al. are careful not to claim strict causality. Once you start explicitly modeling shocks, you introduce additional researcher judgment — what counts as a “major event,” how it’s coded, and so on. There’s a tradeoff between model complexity and interpretability.

On your Mukerjee question: your instinct is understandable, but notice that you are asking a different question from the paper’s goal. Mukerjee et al. test whether engagement (IV) predicts subsequent newsroom production (DV). You’re asking whether newsroom production (IV) ultimately shapes the public agenda (DV). That’s a separate causal chain.

The “small and short-term” effect they find may still be meaningful within newsroom routines. Many editorial decisions are incremental. Even small daily adjustments, if persistent, can accumulate. But evaluating downstream effects on public agenda would require a completely different design. That is not what this paper set out to test.

## 1.3. Jiarou Chen (she/her)
Feb 18 12:40pm
| Last edited Feb 18 3pm
| Last reply Feb 19 11:12pm
View History

Reply from Jiarou Chen

(Barberá et al., 2019)

The VAR model seems to rely on temporal ordering to infer causal directions. Then, why do the authors explicitly say the study as "descriptive rather than causal"? What unobserved confounding factors or limitations in the model's identification strategy prevent it from establishing stronger causal claims about agenda-setting dynamics?

I didn't quite grasp the logic of the "seven-lag-structure" operation mentioned in the article. According to my understanding, it seems that the author calculated the time series of the group and issue attention levels first, and then determined the lag parameters based on the partial autocorrelation. Then, it also examined whether the core conclusions would change under the circumstances of a longer lag period (15 days, 60 days). Is this approach a requirement that is universally enforced? Also, apart from autocorrelation, are there any other indicators that can be referred to in order to determine the lag parameters? Are there any aspects that require the author's subjective judgment?

 

(Duan et al., 2022)

The study selects a 1-day lag for all topics based on the AIC. However, topics may vary in attention cycles: e.g., "Senators Stock Scandal" (T41) may have a shorter lifetime of attracting attention than COVID-19 Research (T47)? So, why not specify different time lag parameters for each topic? Would using a uniform 1-day lag underestimate the difference between long-cycle topics and short-cycle ones?

### 1.3.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 19 11:12pm

Reply from Alvin Zhou
This is exactly why Barberá et al. are careful to call their analysis descriptive rather than causal. Temporal ordering is necessary for causal inference, but it is not sufficient. Think of press releases as the unobserved variable. Suppose a government agency issues a press release. Journalists may react quickly and publish coverage. Politicians may respond a few days later. A VAR could show that media attention “predicts” politician attention. But the real driver could be the unobserved press release, which influences both. The media just reacts faster. In that case, the model would misattribute directionality because the true causal node is missing.

This is why, in political science especially, scholars are cautious about calling VAR-based evidence causal. It captures dynamic "association", not identification in the strict sense.

On the seven-lag structure: Your understanding is broadly correct. Researchers often use diagnostics like partial autocorrelation functions (PACF), AIC, BIC, or other fit criteria to select lag length. It is not universally fixed, it depends on the model. Robustness checks using longer lag windows (e.g., 15 days, 60 days) are common to show that results are not overly sensitive to specification.

On Duan et al. and the uniform 1-day lag: Your critique is reasonable. Different topics may have different attention cycles. In principle, allowing topic-specific lag structures could better capture heterogeneity. But empirically, that becomes very complicated. You would need a clear rule for assigning different lag lengths, otherwise it risks appearing too ad hoc. Do you choose based on diagnostics per topic? On theory? On visual inspection? Each approach introduces additional modeling complexity and justification burdens.

## 1.4. Kaiyi Yu
Feb 18 2:18pm
| Last reply Feb 19 8:55pm

Reply from Kaiyi Yu
Learning about topic modeling this week, I realized that it provides a more automated and efficient way to conduct text analysis and categorize texts into topics. Compared to dictionary-based methods, topic modeling algorithms rely on patterns of word occurrence rather than a pre-defined word list. Interestingly, these readings show that topic modeling can be used in both inductive and deductive research approaches. Although results based on word occurrence and frequencies may seem to be descriptive or word-counting in nature,  they can be combined with other methods to test or extend theories. For example, researchers can deductively compare the presence and frequency of themes across different contexts, or examine predictive and explanatory relationships between themes and other variables. Barberá’s (2019) paper used LDA to generate topics, and incorporated time-series analysis to compare when political issue topics appeared in public discussions versus among Congress members. Though this approach cannot establish strict causal relationships, it reveals meaningful patterns that connect to previous theories and models and warrant further investigation. 

Walter and Ophir (2019) propose using topic modeling in a more inductive way to create theories. They applied topic modeling to frame analysis of news coverage about infectious diseases and epidemics, topics that had not been extensively studied in prior research. Instead of relying solely on human coding, which may be influenced by prior knowledge and bias, they used topic modeling to identify frames. I think this partial use of topic modeling for inductive thematic is quite efficient and can help reduce human bias. 

I think topic modeling seems to be an accessible and effective method for many types of research. However, reliability and validity assessment are crucial. When using LDA in R, the process feels highly automated and algorithm-driven. This raises questions about whether the computer might generate random or erroneous results. For example, some extracted topics may be meaningless or consist primarily of boilerplate terms, such as pronouns or time-related words. Can such meaningless topics only be removed through human assessment? I also think it is important to provide a clear rationale for selecting the number of topics. The articles discuss maximizing or minimizing certain indicators to determine optimal K. Beyond examining these indicators, what else should researchers do when selecting K? Should researchers compare and interpret the topics and terms generated under different K values? How should we conduct this assessment systematically?

### 1.4.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 19 8:55pm

Reply from Alvin Zhou
On the inductive vs. deductive use of topic modeling: your observation is correct. In the early wave of communication research using topic models (I would say roughly 2015–2020), they were mostly used inductively — to summarize large corpora, surface themes, and describe patterns. The more deductive uses — for example, using topic proportions as dependent variables, modeling relationships among topics, or embedding them into time-series or network analyses (think of our readings this week) — became more common later. So yes, you can absolutely use topic modeling at a basic descriptive level (and, in fact, in some top journals, it is still most often used that way). The readings simply show that the method can be pushed further.

On “meaningless” or boilerplate topics: this is a common issue in any dimension-reduction technique, including topic modeling. Topic models will extract the strongest co-occurrence patterns in the data. Sometimes those patterns correspond to meaningful themes; sometimes they reflect stylistic or structural regularities (e.g., generic language). In practice, researchers often remove or ignore such topics. But it is important to recognize that “filler” is partly a subjective judgment. In one study, a seemingly generic topic might actually represent a meaningful discourse pattern. So the key is transparent justification. You can read https://www.tandfonline.com/action/downloadSupplement?doi=10.1080%2F1062726X.2024.2329543&file=hprr_a_2329543_sm3031.pdf page 15 to look at the filler topics.

On selecting K: while metrics held-out likelihood or coherence are useful, most scholars do not determine K purely algorithmically. Human interpretability plays a bigger role, I would argue. A common practice is to estimate multiple models (e.g., K = 10, 15, 20, 25), compare topic coherence and distinctiveness, and then evaluate interpretability by actually looking at the list of topics and their top words and asking yourselves if they make sense. The decision often involves balancing statistical fit with conceptual clarity. In Section 3 of the PDF I linked above, you can see an example of how this process can be documented systematically.

## 1.5. Isabel Garlough-Shah
Feb 18 4:02pm
| Last reply Feb 19 11:02pm

Reply from Isabel Garlough-Shah
I was the RLA for the Barberá et al. (2019) piece and I had some questions that address the limitations of this piece. In this study, the authors describe how their goal was “not to assess whether a social media platform such as Twitter is a useful agenda setting tool for politicians or the public but rather to use their “tweets” as a proxy to measure attention being paid to political issues” (p.884). However, this study’s findings only apply within a Twitter specific context, meaning this study is essentially assessing how agenda setting is a tool for politicians or public audiences on Twitter. I’m curious how a future study could address this limitation. How can future studies use a computational approach while also accounting for a broader political environment beyond social media? 

On a similar note in the Walter & Ophir (2019) piece I have some conceptual questions surrounding the Analysis of Topic Model Networks approach. This method took a three step approach to framing analysis; within the first step topic modeling was used to identify framing elements, but the authors describe how they were “agnostic” to whether topics were consistent within frame elements. Does this bring any methodological concerns around validity in framing constructs? Or is the process of using semantic networks and community detection techniques following this first step eventually validate framing elements?

### 1.5.1. Alvin Zhou (he/him)

On your first point: you’re right that Barberá et al. are operating within a Twitter-specific ecosystem. They are explicit that tweets are a proxy for attention/discourse, not a full model of the political information environment. But it’s always difficult to model “the entire media environment.” Any study draws boundaries.

If you want to extend beyond a single platform, the next step is multi-source data integration. For example, the Robert Hornik paper I assigned for next week (in Journal of Communication) attempts something closer to that ideal. That kind of design better captures the broader agenda-setting ecosystem. But it is much more resource-intensive. I also mentioned Gary King's agenda-setting paper in class, which you can take a look at.

Cynically speaking, we studied Twitter heavily for years, partly because it was accessible and well-structured for computational analysis. It was politically salient and technically convenient. Most political scientists and computational social scientists were fully aware that Twitter is not “the public.” It was a proxy for elite discourse or politically engaged publics. It is kind of like how quantitative social science uses MTurk for many years although many know that the data might not be reliable... well...

On your second question about Walter & Ophir and framing: yes, this was a major debate roughly between 2015 and 2020. Many scholars pushed back against equating topic modeling outputs with frames. Frames are theoretically dense and somewhat abstract constructs. Topic modeling, by contrast, captures statistical co-occurrence.

The authors’ “agnostic” stance in the first step reflects this tension --- probably because they had rejections already, and reviewers harshly criticized them I guess. As I mentioned in other responses, this is part of a broader methodological negotiation in computational communication research. Using topics as proxies for frames was initially controversial. Over time, some scholars have argued that stable co-occurrence patterns approximate interpretive packages, which may serve as proxies for frames. Similar debates happened around using likes, shares, and comments as proxies for “engagement.” At first, people resisted; eventually, those measures became normalized.

So the concern is legitimate. Topic communities are not identical to frames (I feel like older scholars who studied philosophical debates about what engagement is and what frame is may be more conservative about those issues). The legitimacy of treating them as such in the end depends on theoretical justification, but more so on community acceptance.

## 1.6. Wenwen Cao
Feb 18 4:56pm
| Last edited Feb 18 4:57pm
| Last reply Feb 19 11:18pm
View History

Reply from Wenwen Cao
I was impressed by Mukerjee et al. (2023)’s article on the impact of engagement metrics on news content, particularly their use of a large longitudinal dataset and their construction of β₁ as a measure of “responsiveness.” However, although they rely on longitudinal data and include numerous control variables in their model, the authors interpret responsiveness as evidence that engagement metrics shape news production. What kind of research design would be required to truly establish that engagement causes editorial change rather than merely predicts it? In other words, what would count as convincing causal evidence in this context?

Zhou et al. (2023) demonstrate how topic modeling and dynamic inter-cluster analysis can computationally map the intellectual structure and evolution of public relations research. I’m quite interested in this article and this raises a broader question: under what conditions does computational meta-research meaningfully capture the development of a field, and how can it be applied to other subfields in communication? For example, if a similar approach were applied to the Advertising field, what methodological and theoretical requirements would need to be satisfied to ensure that the resulting clusters reflect genuine intellectual paradigms rather than surface-level lexical patterns?

### 1.6.1. Alvin Zhou (he/him)

On your first question about causality and responsiveness: We discussed this in class. If we are strict, the gold standard for causality is experimental manipulation. Observational longitudinal data — even with many controls and robustness checks — cannot fully rule out omitted variables or reverse causality. You should read the Gary King paper I mentioned in class. we can approximate causal inference in observational settings, but rarely achieve it perfectly. In this context, a “true” causal design would require exogenous variation in engagement metrics. For example, if engagement were randomly inflated for certain stories or outlets and not others, and we then observed changes in editorial behavior, that would be much stronger evidence. In theory, one could imagine experimentally manipulating what newsroom analytics dashboards display — artificially increasing likes or shares and observing subsequent editorial shifts. But that raises serious ethical and practical concerns.

Realistically, in newsroom settings, randomized manipulation is very difficult. So scholars rely on longitudinal modeling, fixed effects, extensive controls, and robustness checks to strengthen claims. But even then, many political scientists would still hesitate to call it fully causal.

On your second question about computational meta-research: Topic models capture lexical co-occurrence patterns, so to ensure those clusters reflect genuine paradigms rather than surface-level patterns, you need theoretical interpretation. That’s why team composition matters. In the ad paper I’m working on, we assembled a diverse team — including Claire, Martin from Vienna, and a qualitative scholar — to ensure that topic interpretation is not purely computational but substantively informed by their expertise.

## 1.7. Qiling Wu (she/her)
Feb 18 5:17pm
| Last edited Feb 18 5:18pm
| Last reply Feb 19 9:41pm
View History

Reply from Qiling Wu

Duan et al., 2022

I am surprised by the bot detection method in this paper. On one hand, it might miss some clever bots who pretend as human on social media; on the other hand, it can't detect human water armies (human trolls) at all. After all, there is no perfect research! I noticed the authors used a 'robustness check' to defend their findings. Is robustness check always necessary in a research paper, or did they just add it to satisfy the reviewers?

Mukerjee et al., 2023

The authors split the five-year dataset into 60 monthly windows to identify 1,005 specific topics via NMF. This reminds me of the 'Constructed Week' method in traditional content analysis, where we sample specific days to represent a larger cycle. However, by focusing on these monthly 'slices' to stay close to the real-time news cycle, do you think the researchers might be sacrificing the longitudinal continuity of news narratives? While this method is great for catching a trending topic, does it risk missing the big picture of long-term editorial commitment? For example, can this model distinguish between a newsroom that is consistently investigating a long-term story (like the Trade War) versus one that is simply chasing the most viral fragments of that story each month?

### 1.7.1. Alvin Zhou

My suspicion is that they included those robustness checks in the first manuscript because they anticipated reviewers would ask about them. If I were in their position, I would also expect reviewers to question those methodological decisions.

With something like bot detection, it’s never going to be 100% accurate. Any large-scale machine learning classification will have errors. The real question is not whether the classifier is perfect — it’s whether the imperfection meaningfully changes the substantive findings or implications. That’s the standard we should apply.

On whether robustness checks are always necessary: it depends on the paper and the methodological choices being made. If you chose one method out of several plausible options, or one proxy measure among multiple possible measures, reviewers may reasonably question that decision. A common strategy to preempt that is to rerun the analysis using an alternative method or measure and demonstrate that the results hold. Whenever a choice seems potentially arbitrary, robustness checks are often helpful.

Regarding your point about newsroom reactions versus long-term commitment to stories: I think you’re asking a slightly different question than what the study is focused on. Whether a newsroom reacts to short-term engagement on Facebook and whether it commits to long-term coverage are not necessarily contradictory processes. They can coexist.

Finally, on why they constructed time windows: I believe the reason is that topics evolve over time. If you run a single topic model over the entire dataset (5 years of news!), you may get topics that are highly salient for a short period and then disappear. For example, a topic like Taylor Swift might dominate in month 1 and 2, but drop to near zero afterward. In lagged regressions, you would then have a large number of “0 predicts 0” observations, which contribute little to understanding dynamics. By constructing rolling windows, they allow the topic structure itself to evolve, which better captures change over time.

## 1.8. Jikai Sun (he/him)
Feb 18 6:06pm
| Last reply Feb 19 10:20pm

Reply from Jikai Sun
This week’s readings concentrate on the utility of unsupervised learning, like topic modelling, in textual analysis. As argued by Walter & Ophir (2019), such methods help reduce researchers’ biases when applying certain theories. My first question is whether methods such as topic modeling can really reduce the subjectivity involved in extracting meaning from texts. I feel there may be the following constraints:

(1) Interpreting the results of unsupervised learning still requires subjective judgment. This process may continue to involve subjective bias and is not necessarily less subjective than directly interpreting full texts.

(2) Due to differences in textual structure, unsupervised learning sometimes groups together words whose meanings are actually unrelated, which could make assigning a single topic label to a given category inaccurate.

(3) The choice of a specific unsupervised learning technique is also subjective.

So, how should we evaluate the significance of such text-processing techniques? How do they balance subjectivity and objectivity? More specifically, what potential biases and limitations do they involve? And compared with purely subjective interpretation of texts, what are their advantages?

 

Another question is, I feel that some textual data is more suitable or not suitable to be analysed by certain techniques, depending on the genre of the materials. Also, as Walter & Ophir (2019) mentioned, topic modelling is based on word co-occurrence, without considering factors like location in the text and syntax. However, many times, co-occurrence does not necessarily indicate a thematic relationship. Listing different objects together is also a very common form of language use, and this style may be more or less prominent in certain genres of texts. It seems that many studies do not pay specific attention to whether the textual data they analyze are actually suitable for methods such as topic modeling, since there appears to be not much discussion in papers regarding this issue.

### 1.8.1. Alvin Zhou (he/him)

On whether unsupervised methods reduce subjectivity: you’re right that interpretation still requires human judgment. Topic modeling, in some sense, relocates subjectivity. Instead of deciding themes by reading all texts directly, you make decisions about preprocessing, model choice, number of topics, and how to label them. There is still interpretation.

However, the key difference is scale. Without topic modeling, analyzing hundreds of thousands of documents would be infeasible. The method makes large-scale analysis possible. With that feasibility comes responsibility: transparent documentation, justification of modeling choices, reporting of alternative specifications, and, ideally, collaboration with co-authors who bring different interpretive perspectives.

On unrelated words being grouped together: theoretically, that can happen. In practice, when it does, those topics are often considered “filler” topics. Researchers may drop them or treat them cautiously. But again, that judgment must be justified. Most published topic modeling studies do produce reasonably interpretable topics, especially when preprocessing is done carefully.

On method choice being subjective: that’s true. LDA vs. STM vs. embedding-based topic models is often a justification problem. The important question is whether switching methods materially changes substantive conclusions. If results are stable across plausible modeling choices, then our confidence in the findings will increase. And, compared to purely subjective interpretation, the advantages of TM are scale and maybe replicability (if documented properly, others can reproduce the analysis), and maybe also systematic structure (the model enforces consistent treatment of all documents, preprocessing, removing certain words, all applied equally to all documents, while human labeling might have single-document-dependent treatment changes throughout coding).

On co-occurrence and thematic relationship: yes, co-occurrence does not always imply a meaningful thematic meaning, theoretically. But stepping back, the foundational assumption of topic modeling is that language is structured through patterned co-occurrence. Empirically, across many languages and corpora, this assumption holds remarkably well. Topic modeling has been applied in English, Chinese, and many other languages with reasonable interpretability. While philosophical objections exist, the accumulated empirical evidence suggests that co-occurrence captures meaningful structure in human language most of the time. That said, genre does matter. Highly formulaic texts, extremely short texts (e.g., tweets) may be less suitable. Ideally, researchers should justify why their corpus is appropriate for co-occurrence-based modeling. The absence of that discussion in some papers does not mean it is unimportant; I think we have just started treating that assumption as established.

## 1.9. Quin Mudry Nelson (she/they)
Feb 18 7:21pm
| Last reply Feb 19 10:29pm

Reply from Quin Mudry Nelson
1) Acknowledging the Mukerjee, Yang, and Peng (2023) was published prior to the introduction of AI and AI bots into the social media landscape, would their findings shift re-running this study today, since audience engagement could be artificially inflated by bot activity? I am curious if audience engagement or comments are as relevant in agenda setting for news organizations today since the media environment has shifted so drastically even in the past year alone.

2) I found the Walter and Ophir (2019) article to be a super interesting methods paper, especially this idea of "topic communities" and how they are connected by using social network theory principles. I was intrigued by their concerns about what they are actually measuring. The authors state that they set out to create a framework to analyze framing, but by the time they hit the discussion section, they aren't actually so sure that's what they've measured...I'm inclined to agree, and I really liked their topic communities and topic networks description better since they fit the method.

### 1.9.1. Alvin Zhou (he/him)

On your first question: remember that by the time Mukerjee et al. (2023) were running their study, bots were already a known issue (bot issue came into view around 2016). The reviewer probably also asked them that question. But conceptually, their core claim is about the relationship between observed engagement metrics and subsequent newsroom production decisions.

From the newsroom’s perspective, what matters is the metric they see on the dashboard. If engagement is inflated by bots, it is still engagement as far as the newsroom analytics system is concerned. So unless newsroom practices have fundamentally changed (e.g., they no longer rely on those metrics, or they filter bot activity out), bot inflation does not automatically invalidate the causal relationship they test. It would change the composition of the independent variable, but not necessarily the relationship between engagement (independent variable) and content production (dependent variable).

If you reran the study today and found no relationship between engagement and production decisions, then you would need follow-up qualitative work. Maybe newsrooms have become more skeptical of platform metrics. Maybe they discount suspicious activity. But then, it is a different study with a different goal and implications.

On your second question about framing: you’re right to notice the tension. There was significant pushback between roughly 2015 and 2020 about whether topic modeling could legitimately proxy framing. Frames are theoretically rich constructs; many big-name scholars have a very conservative view about what constitutes "frames". Topic modeling captures co-occurrence patterns. Those are technically not the same thing.

What happened over time is that topic modeling did not suddenly become a perfect frame detector. Rather, scholars negotiated whether topic clusters could serve as operational proxies for frame elements. Similar debates have occurred around measuring “engagement” through likes, shares, and comments — initially controversial, now seemingly normalized.

So your instinct is valid. Calling them “topic communities” may be conceptually cleaner than calling them frames. But the broader pattern here is that computational measures often begin as contested proxies for abstract constructs, and legitimacy emerges gradually as more scholars adopt and refine them. Or, more practically, when so many manuscripts use this method and seemingly breaks down the rigidity of certain concepts, the field started accepting them as given / taken as granted.

## 1.10. Namuun Tsegmid
Feb 18 8:38pm
| Last reply Feb 19 9:56pm

Reply from Namuun Tsegmid
Chen et al. (2023) demonstrate how topic modeling can be applied to open-ended survey responses to identify latent themes in large textual datasets. This raises a broader methodological question about its role in qualitative research. Qualitative researchers often work with extensive interview transcripts, where manual coding is time-consuming and theoretically driven. Could topic modeling serve as a complementary tool to identify, validate, or challenge emerging themes grounded in qualitative theory and research questions?

Across the readings, topic modeling requires preprocessing steps such as removing stopwords, stemming, lemmetization and tokenization. These steps appear similar to preprocessing used in dictionary-based approaches. However, dictionary methods rely on predefined categories, while topic modeling identifies topics inductively based on word co-occurrence. But technically, is the preprocessing stage similar for both dictionary and topic modeling approaches?

Structural topic modeling assigns each document a distribution of topic proportions, meaning that one article can belong to multiple research clusters. In Zhou et al. (2023), the authors use these topic proportions to construct an inter-cluster network. I am curious how topic assignments at the document level are translated into connections between clusters in the network visualization. Conceptually, what does a connection between two clusters represent? Does it indicate theoretical overlap, shared vocabulary, or simply that both topics appear in the same articles? More broadly, what does this network approach help us understand about the relationships or fragmentation between research areas beyond identifying topics alone?

### 1.10.1. Alvin Zhou (he/him)

On your first point: yes, topic modeling can absolutely complement qualitative research. You might look at work on “computational grounded theory” — Nelson and colleagues propose integrating computational tools with grounded theory logic. The idea is not to replace qualitative coding, but to use computational methods to surface patterns at scale, which can then be interpreted, validated, or challenged through theory-driven qualitative analysis. Topic modeling can help identify recurring structures across hundreds of interviews, while qualitative researchers retain control over interpretation.

On preprocessing: technically, yes, the preprocessing steps are very similar across dictionary-based methods and topic modeling: tokenization, stopword removal, stemming or lemmatization. One key issue I want to highlight is that preprocessing decisions are not neutral. When you remove words, you are changing the data you are studying. What counts as a “dirty” or irrelevant word should be justified carefully. Those deletion choices will affect both topic modeling outputs and dictionary counts.

On the inter-cluster network: at a basic level, a connection between two clusters just reflects co-occurrence, that the two topics appear within the same documents. It does not automatically imply theoretical overlap. If two topics frequently appear together in the same articles, the network will show them as connected. The resulting network shows how research areas cluster together, which domains are tightly connected, and which are relatively isolated. That allows us to speak about fragmentation or integration within a field. If you’re interested in this broader question of fragmentation in communication research, you might look at the Song paper in Journal of Communication titled “Less Fragmented than We Thought.” That’s directly addressing this kind of question.

## 1.11. Ruiheng (Rachel) Sun (she/her)
Feb 18 9:13pm
| Last reply Feb 19 10:06pm

Reply from Ruiheng (Rachel) Sun
This week’s readings apply several different ways of unsupervised learning, especially topic modeling.

Duan et al (2022) compare relationships between Twitter bots and human account/news coverage. Theoretically, I’m convinced that news coverage could be influenced by Twitter bots due to several reasons. For instance, journalists monitor Twitter and treat tweets as signals of public interest. How about news to bots? Do twitter bots also collect data outside of Twitter platforms? Since this assumption (news to bots) works, I’m curious about the tech feasibility. In terms of the method, compared to this article, I think Mukerjee et al (2024)’s procedure for dividing time period makes better sense, since each month is modeled separately so topics stay specific and time‑sensitive.

Walter and Ophir’s (2019) article is really interesting to use topic modeling for identifying frame elements. I do believe they are doing their best to advance method approach by combining topic modeling and network analysis. At the same time, I think co-occurrence is not simply equal to framing. What are some theoretical justification that could support that co‑occurrence patterns among topics reliably reflect underlying frame structures rather than simply thematic overlap?

### 1.11.1. Alvin Zhou (he/him)

On the news to bots question: the mechanism does not have to be direct. Bots do not need to “read” the New York Times in a human sense. More realistically, news coverage influences human users, humans tweet about the news, and bots that scrape or monitor platform activity respond to those signals. So the pathway can be mediated: A (news) influences B (users), B influences C (bots). In complex media systems, influence is rarely linear. Multiple actors monitor each other, and there will be multiple feedback loops. That makes it very difficult to isolate clean directional influence.

On your comparison between the 2022 and 2024 papers: the time-windowing decision is largely driven by data complexity. The 2022 study focuses on a relatively short, homogeneous period (e.g., one month of COVID tweets), so topics are already constrained. In contrast, the 2024 paper spans 5 years. Over that time, issues/topics rise and fall too much — think of something like a Taylor Swift spike that dominates briefly and then disappears. If you run a single topic model across the entire period in Mukerjee 2024, you get many months of “0 predicts 0” in lagged models because topics that were once salient become inactive for most months, and this gives you no good information about the dynamics you want to examine. Dividing the data into windows allows topic structures to adapt over time and better capture dynamics.

On co-occurrence and framing: you’re right to be cautious. Co-occurrence is not automatically equivalent to framing. When topic modeling was first applied to frame analysis, there was substantial pushback (think of 2015-2020). Many scholars argued that frames are interpretive structures, not just bundles of words that appear together. The justification for using topics as proxies for frames usually rests on the argument that consistent co-occurrence patterns reflect underlying interpretive frames. I am actually personally cautious about this "topics=frames" move; I feel like it is a bit of a stretch, but I also understand this might be closest we can get to use computational text analysis to proxy "framing".

As I mentioned in the response to another student here, this is part of a broader methodological negotiation: computational measures often begin as controversial proxies and gain legitimacy as more scholars adopt and refine them. You can take a look.

## 1.12. Jessica Tuleassi
Feb 18 11:35pm
| Last reply Feb 19 9:50pm

Reply from Jessica Tuleassi
I really enjoyed this week’s readings on topic modeling and found them particularly relevant to my research proposal. I plan to incorporate topic modeling into my analysis of social media discourse, and learning how other scholars have applied these methods helps clarify how I might structure my own approach. Seeing concrete examples of how topic modeling can uncover patterns in large-scale political text data was especially useful.

I was particularly interested in Barbara et al. (2019) and their discussion of unsupervised versus supervised approaches to topic classification. This raised an important methodological question for me:

1. How does a researcher decide whether to rely on existing classifications of topics or to generate topics inductively from the data?

2. To what extent should this decision depend on the context of the study?

3. How should researchers handle cases where there is a mismatch between a theoretical construct and its empirical measurement, particularly in computational research where proxies (e.g., sentiment scores, topic clusters) may only imperfectly represent the underlying concept?

### 1.12.1. Alvin Zhou (he/him) 

On supervised vs. unsupervised: it really depends on what kind of output you need from the text. Supervised classification typically gives you a binary or categorical label, e.g., whether a comment is civil or not, whether a tweet is about immigration or not. Topic modeling, by contrast, gives you proportions, how much a text is about Topic A versus Topic B. These are different objects. Sometimes both approaches can answer the same question. For example, in the Barberá paper, you could imagine replacing topic proportions with counts of classified tweets about an issue and modeling dynamics that way. But the conceptual choice should be driven by whether you need discrete classification or continuous thematic emphasis.

On mismatch between theory and measurement: this is where things become more philosophical. Sometimes empirical measures do not perfectly map onto abstract theoretical constructs, and that tension is common in computational research. But it’s also worth recognizing that methods can shape theory. Between 2015 and 2020, many scholars resisted the idea that topic modeling could be used for framing analysis. Then papers like Dror’s pushed the field forward by treating topics as proxies for frames. That shift did not happen because the measurement was perfect; it happened because enough scholars accepted the mapping --- I remember a lot of people were using topic modeling for framing analysis and got rejected, and then somehow now reviewers are more open to that idea.

In other words, connecting theory and measurement is partly a negotiation within a scholarly community. Think about “engagement” measured by likes, shares, and comments. Theoretically, engagement is much broader and more psychological. But because many scholars use those behavioral metrics, they have become normalized. Legitimacy often comes from a critical mass of researchers adopting a particular operationalization.

## 1.13. Jiakun Liang
Feb 18 11:55pm
| Last reply Feb 19 10:43pm

Reply from Jiakun Liang
1. Mukerjee et al. (2023) defined and measured engagement as the sum of the number of comments, shares, and reactions. However, how to defined engagement? These indicators are not conceptually equivalent and may reflect differential audience psychological and behavioral responses. For example, a post may receive many "angry" emotions and critical comments indicating opposition, while another may receive many "likes" and supportive shares indicating endorsement. Additionally, as noted by another article Duan et al. (2023), some bot accounts may tend to retweet or comment on certain topics. Therefore, to what extent does the aggregated indicators reflect genuine audience engagement. 

2. In Duan et al. (2023), the number of topics (K = 50) was selected based on model diagnostics such as semantic coherence and held-out likelihood. Actually, I feel a bit confused about the statistical and theoretical criteria  justifying the choice of the topic number. From my understanding, increasing the number of topics allows the STM model to capture more nuanced distinctions in COVID-19 discourse. However, this also risks splitting coherent issues into multiple narrowly defined subtopics. My question is: when does increasing the number of topics lead to overfitting rather than better representation?

### 1.13.1. Alvin Zhou (he/him)

On your first question: I think you’re missing the analytic focus of the Mukerjee et al. (2023) paper. They are not trying to theorize what engagement “really” means psychologically. They are modeling newsroom behavior. From the newsroom’s perspective, engagement is operationalized as the metrics visible on their dashboards — likes, comments, shares, reactions. Whether those signals reflect endorsement, opposition, irony, or even bot activity is not central to their causal question. Their independent variable is observed engagement, and their dependent variable is subsequent content production. If bots inflate engagement, that affects the level of the IV, but not the structural relationship they are testing. between IV and DV. The question is: does higher measured engagement predict changes in newsroom output? That relationship can hold regardless of whether the engagement is normatively “genuine.”

On the conceptual critique of aggregating likes, comments, and shares, you’re correct that they are not psychologically equivalent. But in practice, engagement is frequently proxied this way. This is part of a broader pattern in computational research: we use behavioral indicators as imperfect proxies for abstract constructs. As we discussed in earlier weeks, legitimacy often comes from disciplinary convention.

On your second question about K and overfitting: yes, increasing K increases granularity. It allows the model to divide the discourse into finer distinctions. But at some point, you start splitting coherent themes into overly narrow topics that are unstable or hard to interpret. That’s why diagnostics (semantic coherence, held-out likelihood) are necessary but not sufficient. You also need human interpretability. In practice, researchers usually identify a plausible range (e.g., K = 40–60), inspect the outputs, and choose a value that balances statistical fit and conceptual clarity. Realistically, if the Duan paper uses K = 50, their findings most likely will still hold if K = 49 or 51.

## 1.14. Eun Sun Kyoung
Feb 19 11:52am
| Last reply Feb 19 10:54pm

Reply from Eun Sun Kyoung
1. Walter & Ophir

When using inductive approaches to identify phenomena such as emphasis framing, how much data is minimally required? Of course, there is no clear gold standard, but I am interested in how one can assess whether a dataset is sufficiently large to justify the use of topic modeling, and more specifically ANTMN (Analysis of Topic Model Networks). 

2. Zhou et al.

I am somewhat confused about the simulation approach used in the paper, and whether I understood it correctly. Also, although the paper includes two constraints in the simulation, I am wondering if the statistical null-hypothesis approach is proper, and whether this simulation truly provides a meaningful baseline. Although that is the goal that they intentionally did not consider structural reasons, I was wondering if we could also consider the structural reasons why the two paradigms are hard to connect, and still examine whether the amount of co-exposure between the two clusters would have been much higher. I am curious whether there are other methods for this.


3. When determining the number of topics in topic modeling, there are cases where a topic is not prominent overall, but is nonetheless theoretically or substantively important for my research.
If including such a topic requires setting k unrealistically high, is it possible to fix that topic manually (through human intervention) and then reduce k accordingly? In other words, can researcher-guided constraints be used to preserve a specific topic while keeping the overall model more parsimonious?

### 1.14.1. Alvin Zhou (he/him)

On (1): there’s no hard “minimum N,” but your instinct is right that topic models (and especially ANTMN) need enough text to estimate stable co-occurrence structure. One practical way to calibrate is exactly what you suggested: look at Dror and Yotam’s publication history and check the corpus sizes they’ve used for ANTMN. My memory is that some of their datasets are not huge. The more important thing is not just the number of documents, but (a) average document length, (b) vocabulary size, and (c) whether the corpus is thematically diverse enough to support multiple topics without collapsing into filler.

On (2): I’m not fully tracking what’s confusing you about the simulation setup just from this post. If this is still bothering you, bring it up in class or office hours and we can walk through what the “null” is doing and what it is not doing. But your instinct is good: the simulation baseline is only meaningful relative to the constraints they impose. If you want to incorporate “structural reasons” (e.g., institutional segmentation, journal boundaries), that would be a different null model — still doable, but it becomes a different research design question (and usually requires additional data/assumptions).

On (3): yes — what you’re describing exists. If you have a theoretically important topic that is rare, setting K very high just to “extract” it can be inefficient. There are researcher-guided topic modeling approaches that let you seed or guide topics while keeping K more parsimonious. A few examples you can look at:

BERTopic “guided” topic modeling: https://maartengr.github.io/BERTopic/getting_started/guided/guided.html#example
seededLDA (quanteda ecosystem): https://github.com/koheiw/seededlda?tab=readme-ov-file
keyATM (keyword-assisted topic modeling): https://github.com/keyATM/keyATM

These methods basically formalize what you’re describing: human priors to preserve certain themes, while still letting the model discover structure elsewhere.