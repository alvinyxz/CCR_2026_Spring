# 1. Discussion Topic: [Week 6] Readings[Week 6] Readings

Find the readings for the week at: https://z.umn.edu/J8500_Syllabus

The course is organized as a seminar, which means all students are expected to attend all classes, have read and thought about all readings prior to each class, and participate actively and productively in class discussion.

In general, before class, you should have carefully thought about: (1) how the computational methods used in each study helped address the specific research questions of interest to the authors, (2) in what sense these computational methods could extend conventional methods, (3) what are their major assumptions and limitations, and (4) what new arenas for future research these computational methods could open.

To facilitate discussion, each week, all students will submit (to the whole class and me) at least TWO thoughtful questions or comments of interest to you emerging from the week's readings. These discussion questions/comments should be posted to the "Discussions" section on Canvas (named "[Week X] Readings") at least 24 hours before the scheduled class meeting. You are also encouraged to read other students' questions/comments and reply to them. Regardless of whether you are the Reading Lead for a certain week's readings, you should still post to participate in the discussion.

Canvas Discussion & In-Class Participation will be evaluated based on: (1) the depth and quality of your contributions to the Canvas Discussion, and (2) the engagement and quality of your participation in class.


## 1.1. Anastasia Micich
Feb 23 8:58am
| Last reply Mar 4 6:29pm

Reply from Anastasia Micich
Hornik et al. (2022)

Something that stood out to me about the Hornik et al. (2022) article was the post-hoc decision to evaluate YouTube separately. The decision to exclude YouTube from the composite index and treat it separately was data-driven rather than theory-driven. How do post-hoc decisions like this affect the interpretability and replicability of the overall analytical pipeline? 

Kozlowski et al. (2019)

The authors operationalize cultural dimensions (e.g., "affluence," "morality," "gender") as vector differences between antonym pairs (e.g., rich – poor). What are the epistemological implications of treating cultural meaning as a direction in vector space? Does this kind of approach lose potential for nuance and complexity? 

### 1.1.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 4 6:29pm

Reply from Alvin Zhou
For the first question, I think the issue stems from the limitations of their YouTube measurement. Their YouTube data were analyzed using text only (titles and descriptions), and at the time the study was conducted there were not many practical methods to analyze long-form video content computationally. As a result, their measures from YouTube did not seem to produce meaningful signals, and they ended up treating YouTube separately. That decision appears largely data-driven rather than theory-driven, ytes, which I would consider a shortcoming of the paper because it weakens the interpretability and replicability of the analytical pipeline.

At the same time, it also opens an opportunity for follow-up research. One could replicate the study focusing specifically on YouTube and use newer methods, such as transcript analysis or modern video analysis tools, to see whether the findings hold when richer information from the videos themselves is incorporated.

For your second question, I’m not entirely sure what you mean by “losing nuance or complexity.” Word embeddings can actually capture quite subtle semantic relationships and are the go-to method for analyzing meaning shifts and nuances. For example, researchers can train embeddings on corpora from different years and then compare how the distance between concepts (e.g., rich and poor) changes over time. That kind of analysis can reveal how cultural meanings shift or converge in discourse. So rather than removing nuance, embeddings often provide a way to quantify patterns in meaning that would otherwise be difficult to observe at scale (in comparison to bag-of-words methods). If you have a more specific example of the type of nuance you are concerned about, it would help clarify the question.

## 1.2. Isabel Garlough-Shah
Feb 25 2:27pm
| Last reply Mar 4 3:07pm

Reply from Isabel Garlough-Shah
I was the RLA for the Hornik et al. (2022) piece and I had some questions about the methodological application of this piece given the findings regarding YouTube. While this study did a fantastic job justifying the need for this methodology due to previous observation studies concerned with media effects and smoking behavior lacking endogeneity, I do wonder if evaluating such a broad segment of PCE environment (6 message sources) was too substantive for the method of textual analysis using supervised learning models? Specifically, was it too much for this study to evaluate media that went beyond text as a medium?

I ask this because in this work, pro- and anti-YouTube content had surprisingly little effects on intentions to smoke or quit smoking. While the authors attribute this to the lack of overall views on tobacco content, I wonder if this could be due to their analysis only evaluating available text, but not “visual content”? To me this evaluation choice works for supervised learning models, however, it misses vital content inside of the video like active visuals of smoking. These visuals are important subtext that young adults could subconsciously pick up on. In future work, if researchers aimed to evaluate video content using supervised learning models, would it be possible to scrap transcripts? Or would this be a good case for language dictionaries?

### 1.2.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 4 3:07pm

Reply from Alvin Zhou
First, on the terminology: I’m not sure “lack of endogeneity” is the right phrase here. Usually, the concern in observational media-effects research is endogeneity itself: exposure and outcomes are jointly affected by something else. On your broader point, I do agree with your concern. As we discussed in class, analyzing media that go far beyond text, like YouTube videos, is quite limiting if the method relies mainly on textual features. Back when this study was conducted (roughly 2017-2019), what they did was already quite ambitious compared to most computational work at the time.

A reasonable intermediate step would be to scrape video transcripts, as you said, and analyze those with supervised learning or dictionaries to classify pro- vs. anti-smoking content. That would capture much more of the actual message. Going forward, the analysis of YouTube data could roughly fit into this spectrum:

- Titles/descriptions (simplest, easy from YouTube API)
- Transcripts of the spoken content
- Visual or video analysis

For longer videos like YouTube, another practical strategy is to segment the video into smaller units (e.g., one- or two-minute segments) and analyze each segment separately; this makes it more manageable, like analyzing TikTok videos. Full visual analysis is computationally heavier, but conceptually it’s similar to other classification tasks. We’ll talk more about this when we cover image and video analysis this week.

## 1.3. Jikai Sun (he/him)
Feb 25 2:56pm
| Last edited Feb 25 2:57pm
| Last reply Mar 4 7:25pm
View History

Reply from Jikai Sun
I really like the way Toubia et al. (2021) analyze text-based materials. I can imagine how this approach could work well in pure text, such as novels, biographies, and academic papers, but I am not sure if it is solid enough when analyzing text in movies or TV dramas, since the visual channel information may introduce many confounders. I am also curious whether existing text analysis techniques could take paragraph division in the original text into consideration, as it serves as a clear marker of textual segmentation and serves a key role in topics like narrative style.

The work conducted by Kozlowski et al. (2019) is also very interesting! From a historical perspective, word embedding enables us to analyze how different words are assigned varying social meanings over time. For example, in China, I am so interested in examining how the cultural connotations of KFC and McDonald’s are evolving. For studies covering a long time range, corpus selection is crucial. Given the wide range of available corpora, inappropriate selection may introduce noise or make materials not comprehensive enough. What are your suggestions for selecting materials for this type of study?

### 1.3.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 4 6:46pm

Reply from Alvin Zhou
For your first question, we briefly discussed this in class. It is true that if a movie or TV show relied entirely on visual storytelling with almost no dialogue, then a text-based method like this would not capture much. But in most films and TV episodes there is still a substantial amount of spoken language, so analyzing the textual component can still reveal meaningful patterns.

Regarding paragraph divisions, I’m not sure paragraph structure would map very well onto their approach. In the paper, the authors divide texts into fixed-length word windows (around a few hundred words) and represent each window as a point in semantic embedding space. The reason is that semantic changes can occur inside a paragraph, and paragraph lengths vary a lot across texts. If you used paragraphs as the unit of analysis, you might lose some resolution because a long paragraph could contain multiple semantic shifts.

Using consistent word windows also helps them calculate speed. In the paper, speed is essentially the semantic distance between consecutive chunks divided by the time step, where the time step is the shift from one window to the next. Because speed is defined as distance divided by time, the time interval needs to be consistent if you want the measure to be comparable across texts.

If you used paragraph divisions instead, paragraphs can vary greatly in length. That would mean the “time step” between two points on the semantic path is inconsistent, making the speed calculation less comparable across documents. Using fixed-size word windows avoids that issue and keeps the interval between observations consistent. In that sense, the approach they used is methodologically appropriate for the type of measure they are constructing.

For your second question about corpus selection in long-term embedding studies, I agree that this is a very important design decision. One common strategy is to use a consistent source across time, so that differences you observe are more likely due to changes in meaning rather than differences in the data source. For example, some studies analyze newspapers from the same outlet across decades, or textbooks used in schools over long time periods (I think I included a QJE paper in optional readings about textbook/race/gender). The key point is that the corpus should follow a stable sampling rule over time so that comparisons across years or decades are defensible.

## 1.4. Qiling Wu (she/her)
Feb 25 3:38pm
| Last reply Mar 4 7:26pm

Reply from Qiling Wu
Jaidka et al., 2019

I really appreciate how this paper maximizes the explanatory power of computational methods by leveraging Twitter’s change in the character limit as a quasi-experimental shock. The design is elegant precisely because it exploits an exogenous platform-level change in affordances. My follow-up question is: such clear-cut temporal shocks are relatively rare, and the corresponding data are not always available. In practice, how should we think about identifying or selecting these kinds of “natural experiments” in computational social science? And when such exogenous events are not available, what are the alternative strategies for moving beyond descriptive analysis toward more explanatory designs?

I noticed that the authors use binary 0/1 classifiers for several deliberation-related indicators (such as justification, constructiveness, and reciprocity), rather than continuous scores. In contrast, LIWC-based measures can produce percentages that reflect degrees or intensity. I would like to clarify whether this methodological choice means that the model cannot capture variation in “how much” of a behavior is present and can only detect its occurrence. In this study, is the percentage or intensity of these behaviors actually unimportant for the authors’ research goals?

 

Kozlowski et al., 2019

This is a really fascinating research! In my view, word embeddings are best suited for research questions that focus on relationships among meanings rather than the essence of individual concepts. Because embeddings encode patterns of co‑occurrence in language, they can capture cultural associations, implicit stereotypes, and the semantic distances. This makes them especially powerful for studying how concepts relate to one another, and how meanings shift over time. 

However, in terms of this paper, to what extent do the cultural dimensions and interpretations depend on researcher choices? If word embeddings only provide relational geometry, how do we avoid over‑interpreting patterns that may reflect corpus bias or analyst decisions rather than actual cultural structure?

### 1.4.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 4 7:26pm

Reply from Alvin Zhou
For your first question, identifying “natural experiments” like the Twitter character-limit change is indeed difficult. In many cases, researchers either continuously collect data over time or rely on large digital trace datasets that allow them to look back when something unexpected happens. For example, some political science studies run surveys regularly for years so that when a sudden event (i.e. war) occurs, they already have data before and after the shock. With digital trace data, researchers can also collect historical data retrospectively and examine how behavior changes around a platform or policy change. If you are interested in this type of design, I would recommend looking at two papers by Tian Yang: The Importance of Trending Topics in the Gatekeeping of Social Media News Engagement: A Natural Experiment on Weibo and Civilizing Social Media: The Effect of Geolocation on the Incivility of News Comments. They provide good examples of using regression discontinuity designs with platform data.

When clear exogenous events are unavailable, there are still other approaches to moving toward explanatory designs, such as matching, instrumental variables, or other causal inference strategies using observational data. These methods are not the focus of this particular course, but they are widely used in political science and economics.

Regarding your second question about the binary classifiers, technically, the models do produce probabilities or log-odds, but in many applications, researchers convert those outputs into 0–1 classifications because the task is simply to detect whether a feature is present. That is somewhat different from dictionary-based approaches like Linguistic Inquiry and Word Count (LIWC), where the measure is typically a percentage of words in a category. Supervised learning models are trying to estimate whether a sentence or comment signals a particular construct, rather than counting individual words associated with that construct.

Regarding your question about Kozlowski et al., your interpretation that word embeddings are mainly about relationships between meanings is correct. Individual vectors themselves do not carry interpretable meaning; it is the relative positions among words that create semantic structure. At the same time, your concern about researcher choices is valid. Any embedding analysis depends on the corpus used to train the model, and that corpus places limits on what the findings represent. In the Kozlowski paper, for example, the authors use the Google Ngrams dataset, which represents a subset (~6%) of books published over time. That means their findings primarily reflect patterns in book discourse, not necessarily language in movies, music, or everyday conversation. So, as with most research designs, interpretation should always be tied to the data source and the population of texts it represents.

## 1.5. Jiarou Chen (she/her)
Feb 25 3:47pm
| Last reply Mar 4 2:46am

Reply from Jiarou Chen
(Toubia et al., 2021)

I can understand the logic of integrating time fixed effects when analysing academic papers. However, the way time affects movies and TV shows may differ from that of academic papers. For example, different generation may have different preference of semantic path of texts. Maybe that's also why the analysis of movies includes time effects. But why don't the analysis of TV series include the same step to keep consistency? If the three regression models differ in terms how to deal with the controlled variables, can we interpret the difference among parameters of the different models (e.g., the average speed of TV series explains contribute more to the rating than that of movies)? Or can we only explain the results of each individual model separately and summaize the general trend?

(Li et al., 2021)

Instead of using pure words, this paper uses words and phrases as the analysis unit. Is that because the paper is investigating a professional field (finance, corporate culture) where there maybe many compound phrases? When we are running our own word embedding models, should we decide this in advance by checking whether there will be a professional term list in the field, or should we run the word-based model first, pick out the potential phrases, and then run the word & phrases-based model to compare the performance of two models? Apart from words and phrases, are there other analysis units?

### 1.5.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 4 2:46am

Reply from Alvin Zhou
For the first question: as we mentioned in class, the likely reason they did not include a year variable for TV is that many TV episodes within the same series are released in the same year. So there may not be enough variation in the year variable to meaningfully estimate its effect. Regarding whether coefficients across the three models can be compared: if the models differ in how they treat control variables, we should be cautious about directly comparing the coefficients. One alternative would be to combine the three datasets and estimate a model with random effects, where observations are nested within categories (e.g., papers, movies, TV). That way, you can formally examine whether the effects differ across those groups. Random-effects models are very common; a classic example is students nested within classes and classes nested within schools. I encourage you to do more searches on this.

For the second question: using phrases is likely an empirical decision informed by the data. They probably first tried a single-word model and realized it did not capture important multi-word expressions common in earnings calls. So they introduced two- or three-word phrases. In practice, this is often done through exploration of the data rather than purely theoretical decisions.

## 1.6. Wenwen Cao
Feb 25 6:28pm
| Last reply Mar 4 2:25am

Reply from Wenwen Cao
Jaidka et al. (2019) provide an interesting attempt to estimate the causal effect of Twitter’s character limit change on the quality of political discussion. Although I am still trying to fully understand the fuzzy RD method used in the article, I have a question about their focus on “compliers,” meaning users who actually wrote longer tweets after the rule change. These users appear to be more politically active and engaged than non-compliers. Could the observed changes in deliberation and civility reflect differences in user characteristics rather than the effect of writing longer messages itself? To what extent do you find the fuzzy RD and fixed-effects approaches convincing in addressing this concern?

 

Li et al. (2021) provide an innovative attempt to measure corporate culture using machine learning and earnings call transcripts. Although the approach is technically impressive, I have a question about the underlying assumption. The study assumes that the language used in earnings call Q&A sessions reflects a firm’s internal culture. However, earnings calls are public events where managers may strategically present the firm in a positive light. Could the culture measures partly reflect impression management rather than actual shared values within the firm? How convincing do you find the authors’ validation tests in addressing this concern?

### 1.6.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 4 2:25am

Reply from Alvin Zhou
On the Jaidka et al. question: Your concern about “compliers” is valid. In a fuzzy RD design, the estimated effect applies to compliers — users whose behavior actually changes due to the treatment (here, the character limit increase). If those users are systematically different from non-compliers (for example, more politically engaged), the estimate describes the local average treatment effect (LATE) for that subgroup, not necessarily the entire Twitter population. In practice, however, obtaining detailed user characteristics on Twitter is difficult. Researchers typically rely on observable proxies (think of activity level, tweeting frequency, political tweeting history, follower counts, etc). The concern that the observed changes in deliberation could reflect shifts in who participates (rather than the length of tweets per se) is therefore reasonable.

There are two partial responses the paper relies on: First, even if the mechanism is compositional (i.e., the rule change attracts different types of users), we can still argue that it is still an effect of the institutional change. In that interpretation, increasing the character limit improves deliberation by changing who participates. Second, the fixed-effects models help address this concern by comparing the same users before and after the rule change. If deliberation increases within individuals who tweeted under both rules, that reduces the possibility that the effect is driven purely by different users entering the conversation.

On the Li et al. corporate culture question: This is a classic measurement problem. Earnings calls are public events, yes. But in many ways, this challenge applies to almost all publicly observable corporate communication: annual reports, CSR reports, advertising, press releases, etc. Compared with those channels, earnings call Q&A sessions are often considered somewhat less scripted because analysts ask unscripted questions and executives must respond in real time. The authors address the concern through validation tests, which helps, but they cannot fully eliminate this possibility, because, honestly, I feel like everything that is "public" from corporations is somewhat twisted. In an ideal world, you would compare internal communications (e.g., internal emails, Slack messages, internal documents) with public-facing language, which can reduce the "artificial"-ness.

## 1.7. Eun Sun Kyoung
Feb 25 7:19pm
| Last edited Feb 25 8:12pm
| Last reply Mar 4 6:10pm
View History

Reply from Eun Sun Kyoung
1. Li et al. (2021): They used a semisupervised machine learning approach using a Word2Vec, in which context and meaning can be considered. They trained a Word2Vec model to build an expanded, context-specific dictionary aligned with their research goal. We haven't learned about LLM yet. But, drawing on experience, LLM models such as ChatGPT also assume or assess meaning in context. Also, because they are already trained with infinite data, they might not need an additional human-made dictionary like the one in this study. I guess LLM models can also be semisupervised, since I can write a simple prompt.  So I was wondering 1. if LLM models also use a neural network approach, calculating a vector like Word2Vec, 2. Do LLM models still needs word dictionary, or could I replace it with prompts?, For example, in the context of this study, could prompts like " in the context of business literature, regarding corporate culture, organize words that convey meanings similar to the five value words in Guiso, Sapienza, and Zingales (2015): innovation, integrity, quality, respect, and teamwork" be sufficient? In other words, can using an LLM and a well-designed prompt effectively replace the dictionary-based text analysis?

2. Toubia et al. (2021)

Is controlling the length enough to address the influence of the length? Are analyses such as averaging or normalizing by length in this study enough? Because, even if each document (for example, each academic paper) covers many, if it is long, therefore has many windows, the average can be similar to a short document that covers only a little. When people process information, they don't necessarily feel it as an 'average'; a longer document can cause cognitive overload or feel overwhelming. To what extent can additional analyses in this study address this issue? 

### 1.7.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 4 6:10pm

Reply from Alvin Zhou
For the first question, not sure if we discussed it in class, but LLMs are also based on embeddings. The main difference is that they use contextual embeddings, meaning the embedding representation of a word changes depending on the surrounding words, while models like Word2Vec assign a single vector to each word.

Regarding whether LLMs can replace dictionary-based approaches, this is probably the direction methods are moving toward, but in research settings, it is harder to defend. The key issue is validation. If the results come purely from prompts, it becomes difficult to show that the measurement is reliable or replicable. For niche constructs such as corporate culture, a carefully constructed dictionary or an embedding-based expansion may still be easier to justify empirically (at least for reviewers). Also, LLM prompting is usually described as zero-shot or few-shot, not semi-supervised learning. We will talk more about this, but feel free to search for "zero-shot, "" few-shot, etc., on Google.

For the second question, the authors already try to address document length in several ways. They divide texts into equal-sized windows and compute semantic movement across those windows, which makes the measures comparable across documents. They also include controls such as the number of words and sentences in the regression models. So while cognitive overload from longer texts is theoretically possible, the paper's methodological goal is different: it is focusing on how a document's semantic path evolves rather than on how readers psychologically process length. Controlling for length and normalizing the measures is generally sufficient for their analytical purpose.

## 1.8. Namuun Tsegmid
Feb 25 8:32pm
| Last reply Mar 4 7:03pm

Reply from Namuun Tsegmid
In Li et al. (2021), the authors use word embeddings to expand from a small set of seed value words and construct a culture dictionary in a semi supervised way. This seems quite different from Muddiman et al.'s (2019) manually validated organic dictionary approach, where researchers inductively identify frequent features and then validate each term through human coding to ensure contextual and theoretical fit. What do you see as the main pros and cons of building dictionaries through embeddings versus manually validated dictionaries?

I am also thinking about how classification based approaches shape study design. When we classify texts into categories such as sentiment, culture, or incivility, does that generally lead us toward comparative designs, such as comparing two or more corpora or conducting time series analysis? What are other additional research questions or study designs where supervised learning could be useful in communication field?

### 1.8.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 4 7:03pm

Reply from Alvin Zhou
For your first question, the two approaches mainly differ in how much of the dictionary construction is automated versus human-driven. In Muddiman et al., the dictionary is built almost entirely from scratch through manual term identification and validation. In Li et al., the process is more semi-supervised: researchers start with a small set of seed words and then use word embeddings to identify semantically related words that can expand the dictionary. Human judgment is still involved, but the embedding model does much of the exploratory work.

I would not necessarily say that one approach is strictly better than the other. Both are defensible depending on the research design. The manual approach offers strong conceptual control because every term is directly validated by researchers. The embedding approach offers scalability and efficiency, because it can quickly surface related terms that researchers might not have considered.

For your second question, classification-based approaches often lead to comparative designs, such as comparing groups, corpora, or time periods. But the key point is that supervised learning is mainly a tool for classification, and the classification step is often just the ***first*** stage of the analysis. For example, imagine you want to study protest participation using Twitter data. You could train a classifier to identify whether a user is actually attending a protest or just commenting from home. That gives you a binary variable (0/1). But the research question does not end there: you could then examine whether people who are physically at the protest post more emotional tweets, more political content, or different types of narratives compared to those tweeting remotely. In other words, the classification helps construct the dataset, and then you can use that variable in further analyses and comparisons.

So, rather than asking what kinds of research questions supervised learning is best for, it is usually better to start with the research question and then determine whether classification is a useful step in building the dataset needed to answer it.

## 1.9. Quin Mudry Nelson (she/they)
Feb 25 8:58pm
| Last reply Mar 4 6:38pm

Reply from Quin Mudry Nelson
I am the RLA Lead for Kozlowski et al. (2019) this week, and I had a lot of questions (and concerns) about this method:
 
1) My main question and food for thought is about forcing binary characterizations (even if on a spectrum) -- the idea that something must lean more toward this or that (rich vs. poor, or an even more harmful comparison in my opinion, black vs. white). What are the potential consequences of doing this, especially in computational methods, and especially in a method used with the intention of deriving meaning?

2) The Kozlowski et al. also made me think about how it certainly is possible to get too computational. I think the study team greatly undersold their own human meaning making throughout their findings...because without a deeper understanding of the model, what it's doing, and what cosine similarity actually measures in this context, it would be very difficult to derive meaning from this research. This is not a model I would use when trying to summarize information for interdisciplinary audiences. Can computational methods to get so deep into the weeds that it's hard to convey the research to non-experts? And is this a limitation of computational methods generally, that more sophisticated models turn into black boxes to other researchers?

### 1.9.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 4 6:38pm

Reply from Alvin Zhou
For your first question, this connects closely to the concern Anastasia raised about naunces and complexity. The use of binaries such as rich-poor or Black-White is essentially an empirical strategy in the Kozlowski paper. The authors use antonym pairs to define a semantic direction in the embedding space. That does not mean culture is inherently binary---it is simply a way to operationalize a dimension so that it can be measured computationally. In principle, the approach could be extended beyond two poles. For example, instead of comparing only two groups of words, one could construct several reference clusters (e.g., words associated with different ethnic or cultural groups, black, white, hispanic, asian, etc) and then examine which cluster a given word is closest to using cosine similarity. So the binary structure is not a theoretical requirement of the method, it is just a modeling choice that simplifies measurement for this specific paper.

For your second question, I actually find word embeddings relatively easy to explain compared to many other computational methods. The basic idea, that words are represented as points in a space and their similarity is measured by distance, is fairly intuitive. In contrast, some supervised machine learning models or large neural networks can be much harder to communicate. That said, it is true that many computational methods function as partial “black boxes.” Even within computational social science, most researchers do not understand the full mathematics behind models such as word embeddings or topic models (topicmodels, stm, etc, they are all in the end maths). Instead, we rely on the theoretical and mathematical work established in the methods literature. In practice, this is a common convention in science: once a method has been validated and widely adopted, researchers use it while focusing their explanations on the conceptual logic rather than the full mathematical explanation.

## 1.10. Ruiheng (Rachel) Sun (she/her)
Feb 25 9:03pm
| Last reply Mar 4 6:54pm

Reply from Ruiheng (Rachel) Sun
This week’s reading covers new methods including supervised learning and word embeddings.

Word embedding is really new to me, and several articles have shown examples how to quantify words’ meaning. Toubia et al.’s (2021) article is quite interesting that success isn’t random but there is a semantic structure to predict it. word2vec word embedding is used to capture semantic similarity, so this paper could see distance between ideas and movement across their storylines in order to quantify stories. Li et al. (2021) also applied word2vec word embedding to see corporate cultures in their earning call Q&A sections. Word embedding reminds me of LIWC with various dictionaries we see in the class. Comparing these two, I wonder whether word embedding is a more rigorous method? Word embedding could provide a map where words used in similar ways are physically close to each other, but LIWC couldn’t. Also, I think word embedding could capture abstract and more subtle meanings beyond simple categorization in dictionaries.

Hornik, Gibson et al. (2022) applies supervised machine learning. They used text from 9 coders for training, and this step looks similar to traditional content analysis. I wonder if 9 is a normal number in this method? Also, do they need to determine intercoder validity?

### 1.10.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 4 6:54pm

Reply from Alvin Zhou
For your first question, I would generally agree with your intuition. Compared with dictionary-based approaches such as LIWC, word embeddings are usually considered more flexible and computationally efficient. Dictionary methods rely on predefined word lists and fixed categories, making them relatively rigid. Word embeddings, by contrast, learn semantic relationships from the corpus itself and place words in a continuous vector space where similar words appear closer together. Because of that, embeddings can capture more subtle and contextual patterns of meaning that dictionaries often miss. That is also why many recent computational social science studies prefer embedding-based approaches. Also, LLMs are based on embeddings, so it seems embedding is the way to go from now on.

For your second question, having nine coders is not really the norm. Many supervised learning studies rely on a smaller group of trained annotators. In this case, the large number of coders may partly reflect the research team's collaboration structure and the scale of the data they needed to label (all coauthors probably contributed data and did a lot of prep work, and when it comes to coding, they were like "how about everyone code a portion?"). Regardless of the number of coders, they still need to report intercoder reliability before using the labeled data to train the model.

And just to clarify terminology: in content analysis, we usually talk about intercoder reliability, not intercoder validity. Reliability refers to whether different coders consistently assign the same labels. Several statistics are used for this purpose. The most common is Krippendorff’s alpha, but other measures (such as Cohen’s kappa or Fleiss’ kappa) can also be used depending on the number of coders and the structure of the data.

## 1.11. Kaiyi Yu
Feb 25 10:22pm
| Last reply Mar 4 7:42pm

Reply from Kaiyi Yu
Hornik et al. (2022) is such an impressive large-scale study. From this study, I learned about an approach to strengthening causal inference without using experiment design, the exogenous measurement design. The authors examined public communication environments, which are independent of and unrelated to respondents’ individual media selection or habits. These environments function more like background noise and are therefore less likely to be influenced by the dependent variable, individuals’ smoking intentions. But I wonder whether this design can fully eliminate all confounding factors. For example, what if both PCE and youth smoking intentions are influenced by other unobserved factors. I also have some questions about the method design of the study. Why did the authors use expert coders rather than MTurkers to code Twitter and YouTube content? Why was YouTube content particularly weighted using view counts? It seems that the rationale of visibility and popularity would also apply to news and Twitter content. Why were some media sources coded as binary variables while others were coded as probabilities?

In Jaidka et al. (2019), I noticed that some measures range from 0 to 100 as continuous variables, while some are coded as binary variables. Are these different coding due to the use of supervised machine learning versus dictionary-based text analysis? Is there any methodological concern when combining these different measurement approaches within the same study? Is the prioritization of using existing models or dictionaries developed by other researchers mainly for purposes of efficiency and validation?

### 1.11.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 4 7:42pm

Reply from Alvin Zhou
Your question about confounding factors is very good and reflects a critical understanding of research design. In observational studies, it is extremely difficult to eliminate all confounders. For example, imagine that one day the government suddenly announced a nationwide smoking ban starting the next day. That would likely change both the public communication environment (PCE) and youth smoking intentions at the same time. In that case, we might observe a relationship between PCE and smoking intentions that is actually driven by this external event.

Regarding expert coders, sometimes researchers use experts when the content is complex or requires domain knowledge. However, I do not think that is necessarily the case here. My guess is that many of the authors were already involved in the project and simply coded the data themselves instead of paying MTurk workers.

For YouTube, the authors weighted content by view counts because they were trying to approximate audience exposure. In other words, a video with more views likely reaches more people. In principle, similar weighting could also be applied to other platforms (e.g., likes, retweets, impressions), but that is less commonly done. But if we want to replicate the study today and use TikTok, I would think weighting by view count is needed.

For the coding scheme, each individual media message is typically classified as 0 or 1 (e.g., pro-tobacco vs. anti-tobacco). Then, when constructing the daily measure, those values are aggregated into a percentage or probability. For example, if 500 out of 1,000 messages in a day are pro-tobacco, the daily measure would be 0.5.

Finally, using existing models or dictionaries is common, partly for efficiency and partly for validation. If previous studies have already developed and validated certain measures, using them allows researchers to maintain comparability with the literature and demonstrate that their results are consistent with established approaches.

## 1.12. Jiakun Liang
Feb 25 10:31pm
| Last reply Mar 4 6:21pm

Reply from Jiakun Liang
1. Toubia et al. (2021): I find the approach to analyzing the narrative is really interesting and innovative, particularly for art works, like movies, novels, and TV series, which can capture their structural patterns of their semantic meanings across texts. However, I find some technical details regarding the word embedding analysis really confusing. First, the authors measured the texts in the 300-dimensional word embedding space. How to understand the 300-dimensional vector? What does each dimension represent? Would the results change if alternative models, such as BERT or different number of dimensions (e.g., 100, 200) were used? Second, the authors assume that greater distance between consecutive chunks indicates greater semantic or thematic change. However, I think some topics naturally have farther semantic distance, such as crime or psychological thrillers. Therefore, to what extent does semantic distance actually reflect narrative speed comparable to different themes?

2. Hornik et al. (2022): The study classifies YouTube videos only based on textual data (e.g., titles and descriptions) rather than audiovisual content. Given that persuasive meaning in videos may be conveyed primarily through visual data, why did they not evaluate visual data? How might the reliance on textual coding introduce systematic misclassification？Additionally, the study assumes that media effects naturally occur in the context PCE, where people are immersed in messages from multiple sources, reflecting their engagement with that environment. However, from my understanding, media coverage does not mean exposure, particularly in the algorithmic curated environment, in which individuals may only be exposed to the content they like to see. Therefore, what implications does this have for the validity of PCE-based causal inference? 

### 1.12.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 4 6:21pm

Reply from Alvin Zhou
For the 300 dimensions, that is simply the standard setup used in many Word2Vec models. Researchers could use 100 or 200 dimensions, but 300 is very common in practice. Importantly, each dimension does not have a substantive interpretation. The numbers themselves do not mean anything individually. What matters is the relative position of words in the embedding space, because the distances between vectors capture semantic similarity. In other words, a single word’s vector is meaningless by itself; meaning emerges only when all words are located in the same vector space. The paper uses these vectors to place chunks of text in a high-dimensional semantic space and then measure how the text moves through that space.

Regarding semantic distance, this is not an arbitrary assumption on the authors' part. Words that appear in similar contexts are located closer together in the vector space, and words used in very different contexts are farther apart; this is baked into word embedding. So when consecutive chunks of text are farther apart in that space, it indicates that the discourse has moved to semantically different ideas.

You could revise that part like this:

It might also help to clarify what you mean here: are you asking whether the measure is really capturing narrative speed, or simply movement across different topics or themes? If that is what you mean, I would actually argue that these two things are closely related. In this framework, moving quickly from topic A to topic B and then to topic C is precisely what the authors define as faster semantic movement. So yes, it does involve shifts between themes, but those shifts are exactly what constitute narrative speed in their measurement approach (change of topics, of course, is one of the many ways "narrative speed" manifests itself). In other words, topic change and narrative speed are not competing explanations here.

For your second question about the Hornik paper, we briefly discussed it in class, and feel free to refer to my comments to other students in this thread. Analyzing long-form video content, such as YouTube, remains methodologically challenging, especially for earlier computational studies. That is why the authors relied on textual features such as titles and descriptions, which are much easier to retrieve through the YouTube API. A possible intermediate step would be to scrape video transcripts and analyze them with supervised learning or dictionaries. Going further, researchers could segment videos into short time intervals (e.g., one-minute segments) and analyze those pieces. Visual analysis is also possible today, but it is much more computationally demanding.

Finally, regarding your question about algorithmic exposure and causal inference: the paper does not make a causal claim at the individual level. Their analysis operates at a societal or media-environment level, examining the overall communication environment rather than individual exposure. Questions about how algorithmic curation shapes individual exposure are therefore operating at a different level of analysis than what the study is trying to measure.

## 1.13. Jessica Tuleassi
Feb 25 11:26pm
| Last reply Mar 4 7:11pm

Reply from Jessica Tuleassi
Honik et al. (2022)

This piece was interesting, considering the number of years (3 years) dedicated to collecting data. I was particularly intrigued by their argument on how media effects "naturally occur in the context of such a complex PCE, where people are immersed in messages from multiple sources, and make behavioral choices reflecting their engagement with that environment." Considering the current high-choice media environment, I believe it is prudent to analyze the media's effect across different platforms. I was curious as to why the researchers chose to analyze YouTube differently from other media sources like Twitter and broadcast news. How does this affect the interpretation of the data, especially when the authors argue that we live in a complex public communication environment where people are exposed to different media?

 

Jaidka et al. (2019) employ a strong and carefully structured research design to examine the relationship between Twitter’s character limit expansion and the broader effects of technological affordances on political discussion. The study is clearly motivated and methodologically rigorous. However, I wonder whether the observed effects, namely reductions in incivility and increases in politeness and deliberative tone, might also be influenced by other concurrent factors beyond the character limit change itself.

### 1.13.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 4 7:11pm

Reply from Alvin Zhou
For your first question about YouTube, this connects to some points raised in earlier discussions on this thread. The authors ended up analyzing YouTube differently largely because their measurement for YouTube was based only on textual features (titles and descriptions). At the time the study was conducted, computational analysis of long-form video content was still quite difficult, so they relied on text that could be easily collected through the platform’s API. Because those textual signals did not integrate well with the rest of the measures (or because they know that analyzing text from YouTube misses much of the useful signal), YouTube was treated separately. This decision is therefore largely data-driven rather than theory-driven, which is a limitation of the paper.

It is also important to distinguish the level of analysis in this study. The paper aims to measure the overall public communication environment (PCE), that is, the aggregate media content circulating in society, and to examine how that environment relates to population-level outcomes. The “high-choice media environment” argument you mentioned typically focuses on individual exposure and selective consumption. That is a different unit of analysis from the one the authors use here, which is looking at the societal-level media environment rather than individual-level media choice.

For your second question, that is actually a very good concern and relates to a classic issue in regression discontinuity designs (RDD) called a history threat. The logic of the design is that communication just before and just after the policy change should be comparable except for the treatment (the change from 140 to 280 characters). However, if another major event occurred around the same time, it could also influence how people communicate.

For example, imagine hypothetically that a major global event happened on the exact same day as the character limit change. If people suddenly started communicating differently after that day, it would be difficult to know whether the change was due to the platform design change or the external event. In that sense, what the design can most confidently show is that communication changed before versus after the policy change, but we still have to consider the possibility that other contemporaneous factors contributed to that difference. This is such a good comment, you should have raised it in class :)

## 1.14. Carolina Aguiar Da Silva
Mar 6 10:01am
| Last reply Mar 7 10:05pm

Reply from Carolina Aguiar Da Silva
Hornik, 2022

I enjoyed the mixed-methods approach and the idea of PCE being a positive framework for a national study. However, I think this method still faces some issues. For example, it could have explored other covariates such as age, race, or social media use. I understand that the design prioritizes internal validity, which makes me wonder about the difficulty of these decisions. In this case, if we already have the data, should we check whether it leads us somewhere meaningful, and if the results aren’t promising, then decide not to include it? Or is it more a methodological choice focused on achieving a cleaner outcome before even checking results?

Also, in my view, the study relied heavily on assumptions, such as the idea that the six captured sources represent the broader PCE and that the identified content reflects opportunities for exposure but not actual exposure. So what is the “limitations limit”? What is the line to see if the research is enough or if it has more limitations than allowed?

 

Toubia, 2021

This is not a discussion question, but I barely understood this method even after reading it more than once, so I’m using this space to ask. They split the text into equal parts in order to calculate the mean of the vectors, which were based on words. How did they transform words into vectors? I also didn’t understand what they meant by measuring speed and pacing. What exactly are they measuring? I understand that the more separated the chunks are, the more different the topics, and the higher the speed, the more rapidly the topics change. But I’m still not getting how they actually mean measuring this speed.

### 1.14.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 7 10:05pm

Reply from Alvin Zhou
I think there might be a small misunderstanding about the research design in the Hornik et al. paper. Although the study uses survey data, the authors’ main goal is to examine how population-level media coverage about smoking influences population-level smoking intentions. In other words, the key explanatory variable is the societal communication environment, not individuals’ personal media exposure.

Because of that, adding individual-level covariates such as age, race, or social media use would somewhat mix levels of analysis. Those variables operate at the individual level, whereas the PCE measure is at the societal level. If the research question were about how individual media environments shape smoking attitudes, then those covariates would be much more central. In this study, however, the focus is on linking societal media production to aggregate public intentions.

Another important point is that their survey uses weekly random samples of the population, meaning each week’s respondents are different individuals. Because the samples are randomly drawn, demographic variables such as age, race, or gender should not systematically bias the relationship between PCE and smoking intentions. Including those variables would mainly improve statistical precision rather than fundamentally changing the estimated effect.

Regarding the assumption that the six sources represent the broader PCE, I agree that this is a limitation. But measuring the entire public communication environment is practically impossible. In this sense, the authors are attempting something that very few studies have tried to do at that scale. The key question is whether their operationalization is reasonable and transparent, rather than whether it perfectly captures the whole media environment.

For your Toubia question, I think the difficulty mainly comes from understanding word embeddings. I would recommend first reading the instructional article here: https://doi.org/10.1086/715162

You might also find these short videos helpful for getting an intuitive sense of how embeddings work:

https://youtube.com/shorts/FJtFZwbvkI4?si=9RCKBkRxU1G7OY1B

https://youtube.com/shorts/h__DQ3LplK0?si=BiMSe5FGnkc0yIUd

The basic idea is that every word is represented as a vector in semantic space. Words that have similar meanings are located closer together in that space. To represent a sentence or a chunk of text, you can take the average of the embeddings of the words in that chunk.

For example, imagine I say the sentence: “I love teaching this class.” Each word has an embedding, and you can average them to get one vector representing that sentence. Now imagine the next sentence is: “Chicken lays an egg tonight.” You can again calculate the average embedding of those words.

Then you measure the distance between the two sentence embeddings. Because those two sentences are about completely different topics, the distance between their embeddings should be relatively large. If those two sentences appear right next to each other in the text, that means the meaning of the narrative shifted very quickly. In the paper’s terminology, that indicates high narrative speed or pacing.

But if those two sentences appear far apart in a long piece of text---say many paragraphs away from each other---the shift is happening over a longer interval, so the pacing might be slower.

So conceptually, what the paper is doing is tracking how the semantic position of the text moves through embedding space over time. If the text jumps around a lot in that space, the narrative is moving quickly; if it stays in roughly the same region, the narrative is changing more slowly.