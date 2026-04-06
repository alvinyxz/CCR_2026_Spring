# 1. Discussion Topic: [Week 4] Readings[Week 4] Readings

Find the readings for the week at: https://z.umn.edu/J8500_Syllabus

The course is organized as a seminar, which means all students are expected to attend all classes, have read and thought about all readings prior to each class, and participate actively and productively in class discussion.

In general, before class, you should have carefully thought about: (1) how the computational methods used in each study helped address the specific research questions of interest to the authors, (2) in what sense these computational methods could extend conventional methods, (3) what are their major assumptions and limitations, and (4) what new arenas for future research these computational methods could open.

To facilitate discussion, each week, all students will submit (to the whole class and me) at least TWO thoughtful questions or comments of interest to you emerging from the week's readings. These discussion questions/comments should be posted to the "Discussions" section on Canvas (named "[Week X] Readings") at least 24 hours before the scheduled class meeting. You are also encouraged to read other students' questions/comments and reply to them. Regardless of whether you are the Reading Lead for a certain week's readings, you should still post to participate in the discussion.

Canvas Discussion & In-Class Participation will be evaluated based on: (1) the depth and quality of your contributions to the Canvas Discussion, and (2) the engagement and quality of your participation in class.

## 1.1. Anastasia Micich
Feb 7 11:18am
| Last reply Feb 14 9:02pm

Reply from Anastasia Micich
I am doing the RLA for Muddiman et al.'s (2019) article. Overall, I thought it was a really interesting article that clearly laid out the approach to the methodological hole they were trying to fill. The authors did a nice job clearly explaining the processes and justifications. I have two discussion questions about this article, in case people want to think it over before class on Thursday! 

1. Given the tradeoff between capturing all the relevant content and minimizing false positives, when is it appropriate to prioritize validity over comprehensiveness in computational text analysis? How does that choice depend on the formation of the RQs? 

2. The authors used trained grad students and faculty as coders. Do you think this choice affects the generalizability of the findings, especially when studying incivility where perceptions vary across individuals? Would different coder populations potentially produce meaningfully different dictionaries? While this is not a question about the computational method itself, it would materially change how the computational method is implemented. 

### 1.1.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 9:02pm

Reply from Alvin Zhou
On your first one: yes, as we discussed in class, most organic dictionary-development papers clearly prioritize validity over comprehensiveness. The goal is usually to build a parsimonious dictionary that captures the core of a construct while minimizing false positives. That makes sense, especially when the phenomenon is smaller, under-theorized, or lacks an existing lexicon. If the research question is about detecting the presence of a theoretically specific construct (e.g., incivility, in-group favoritism), then validity is more important than covering every possible edge case.

That said, one alternative approach, as we discussed in class, is to construct a spectrum of dictionaries: a narrow “core” version with high precision, and broader versions that include adjacent or borderline terms. Running analyses across that spectrum can serve as a robustness check and show whether findings depend on strict versus expansive operationalization.

On your second question: this is such a good question (you should have raised it in class!). Incivility is inherently perception-based, and trained graduate students or faculty are not neutral observers. Their interpretations may differ systematically from the general public. So yes, coder population absolutely can affect what ends up in the dictionary. There’s actually a growing body of NLP research questioning whether what we call “bias” in coding is always bias, or whether it reflects genuine differences in how different groups interpret language. For example: https://ojs.aaai.org/index.php/AAAI/article/view/26698

## 1.2. Ruiheng (Rachel) Sun (she/her)
Feb 8 8:44pm
| Last reply Feb 14 9:20pm

Reply from Ruiheng (Rachel) Sun
Both Brady et al. (2016) and Chen et al. (2022) show examples about how to study information diffusion or contagion using computational method. Brady et al. (2016) operationalize contagion as the number of times each message is retweeted. They count tweets by identifying any tweet that begins with the original author. Since their focus is on message-level contagion, this approach seems reasonable. I'm also interested in other aspects, especially who retweets the message. For example, in an advertising context, influencers may retweet content, which could have a different impact compared with retweets from regular users. In this case, what are some adjustment we could make based on their method? I also recall that Alvin once mentioned in a different time about we need to assign "weight" to retweeters, for example, giving more weight to the first person who retweets a message than to those who retweet it later. Therefore, is giving different people with different weight a solution?

Chen et al.'s (2022) is really interesting and reminds me of my experience reading news during Covid. I used to find it difficulty to select a suitable dictionary for text analysis, and this article addresses that challenge by building a new dictionary through an iterative process. This approach seems quite innovative, especially given the uniqueness of the context. Muddiman et al. (2019) provides a different example in developing dictionary for a new concept. Developing new dictionaries appears to be similar to developing a new scale, since both often require a standalone study for creating and validation.

Although this week's readings are primarily in a political context, I believe ad researchers could adopt this perspective to study why some sponsored content or ads go viral on social media, which relates to viral marketing. For instance, we could examine the post's engagement size, similar to the approach from Chen et al.'s (2022) article. This reminds me of discussion from last week about computational methods in political research are highly competitive. I want to ask some follow-up questions: What are some strategies to avoid this competition? Would it be a good approach to focus on topics outside of this area (e.g., strategic comm, health comm) while borrowing only their advanced methodological techniques?

### 1.2.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 9:20pm

Reply from Alvin Zhou
On weighting retweeters: this is interesting but methodologically tricky. If a celebrity retweets a post, that already increases its visibility and likely leads to more downstream retweets of that original tweet. In other words, the raw retweet count you observe has already absorbed the celebrity effect. If you then additionally weight celebrity retweets more heavily, you might be double-counting influence and distorting the dependent variable. That said, if your research question is about who drives diffusion, then you could shift the unit of analysis. Instead of only measuring total retweets, you could: include characteristics of early retweeters (e.g., follower count, verified status) as predictors; model cascade structure (depth vs. breadth) (look at my response to Jiakun); or analyze whether influencer participation predicts larger downstream spread.

On your broader career question: yes, focusing on areas outside of political communication while borrowing advanced computational methods is absolutely a viable strategy. In fact, that’s often how people differentiate themselves. Political communication is currently crowded with computational work. Applying similar methodological sophistication to strategic communication, advertising, health, science, or branding can create space to stand out.

## 1.3. Isabel Garlough-Shah
Feb 9 10:30pm
| Last reply Feb 14 8:24pm

Reply from Isabel Garlough-Shah
This week’s readings discussed textual analyses, validation for dictionaries, and the various ways textual analyses can be used to analyze topics ranging from political communication to health conspiracies. Both Chen et al. and Bradley et al. articles caught my attention this week as they evaluated topic fascinating topic matters (COVID-19 conspiracies and public policy debates) and the effects of particular text on diffusion across social platforms. Furthermore they utilized similar, yet slightly differing computational methods to assess the effects of presence/dimensions of national identity and moral-emotional words.

In the Bradley et al. article researchers used LIWC software to assess moral language and emotion while Chen et al. combined manual content analysis to create dictionaries for in-group favoritism and out-group hostility. With this in mind, I had a methodological question about the creation of dictionaries within computational methods that stemmed from these readings and the Welbers et al. article.

I’m curious how the validation process for using social media content analysis data to create a dictionary works? Is it similar to supervised machine learning models? Furthermore, when should a researcher utilize a validated premade dictionary from a software like LIWC vs. create their own?

### 1.3.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 8:24pm

Reply from Alvin Zhou
A simple rule of thumb is this: If the concept you’re studying is well-established and repeatedly measured in prior research, then it usually makes sense to use an existing validated dictionary (like LIWC in the Brady paper). One advantage there is that you can run robustness checks across multiple established dictionaries measuring similar constructs (e.g., different morality or emotion lexicons) and show that your findings hold across specifications.

If the concept is new, context-specific, or underdeveloped in computational research, then you may need to build your own dictionary (like Chen et al.). For example, studying national identity in Chinese language contexts may require constructing a domain-specific lexicon because there simply isn’t an established one available.

There’s also a middle case: when the concept is familiar, but the language or cultural context is different. For instance, morality dictionaries developed in English may not transfer well to Chinese or other languages. In that case, adaptation or redevelopment becomes necessary. --- There also comes the discussion about inequality in CSS research, because most tools are developed in English, which really excludes many regions of the world. But that's a topic for another day.

On validation: in principle, dictionary validation can look very similar to supervised machine learning validation. You could split your data: use part of it to develop the dictionary, and another portion as a validation set. Then you compare dictionary classifications to human-coded “gold standard” labels and calculate metrics like accuracy, precision, recall, or F1 (that we discussed in class).

In practice, however, many dictionary-development papers rely more on iterative refinement and theoretical justification (e.g., demonstrating saturation of terms) rather than formal held-out validation, like the Chen paper. That doesn’t mean formal validation isn’t possible, it absolutely is, but it’s not always done rigorously.

## 1.4. Qiling Wu (she/her)
Feb 10 4:03pm
| Last reply Feb 14 9:55pm

Reply from Qiling Wu
Chen et al. (2022) combined manual annotation with the construction of a task‑specific dictionary. I found this approach particularly insightful because it directly addresses the limitations highlighted in van Atteveldt et al. (2021). According to van Atteveldt et al., manual coding remains the most reliable, while dictionary-based approaches consistently perform the worst. Machine learning models perform better than dictionaries but still fall short of human-level accuracy and raise concerns about opacity and interpretability. Therefore, Chen et al.’s hybrid strategy feels especially promising. By grounding their dictionary in high-quality human annotations, they avoid the pitfalls of generic lexicons and ensure that the dictionary reflects domain-specific language use. At the same time, the dictionary provides a transparent and scalable tool that can complement or guide automated methods. This raises an interesting possibility: instead of treating manual coding, dictionaries, and machine learning as competing approaches, perhaps the most robust solution is to integrate them? This also raises a broader methodological question about the conditions under which different approaches perform best. The relative effectiveness of manual coding, dictionaries, and machine learning likely depends on factors such as the size of the dataset, the complexity of the coding task, and the availability of high-quality labeled data. While I do not have deep technical expertise in machine learning, it seems plausible that machine learning approaches may perform better as training data become larger and more representative, given their reliance on labeled examples. This suggests that the choice of method should be guided not only by theoretical considerations but also by practical constraints related to data scale and annotation difficulty?

Reading Brady et al. and Barari makes me feel that “pure” text analysis often risks becoming a sophisticated reporting tool, mapping patterns in language without fully theorizing mechanisms. By contrast, these papers seem to integrate text with external variables (network structure, stakeholder characteristics, governance indicators) to tell a more complete "causal" or interpretive story about political communication and corporate behavior. So my question is: What distinguishes computational text analysis that merely describes patterns in language from computational research that actually explains social processes?

### 1.4.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 9:55pm

Reply from Alvin Zhou
On your first point: yes, you’re exactly right. Machine learning approaches generally improve as training data become larger and more representative. That’s the core logic of supervised learning. And your broader point is also correct: method choice is not just theoretical, it is oftentimes practical. Scale, annotation difficulty, time, reviewer expectations, and journal norms all matter. In reality, paper writing is often strategic. If you try to integrate manual coding, dictionary development, machine learning, and LLM validation all in one study to make it “perfect,” the methods section could consume the entire paper. You may not even have space left for theory or results. Worse, you may struggle to find reviewers who are competent across all those techniques. So yes, methodological choice is partly epistemological, partly practical, and partly strategic.

On your second question: this is an excellent observation. Computational text analysis often excels at description: mapping patterns, identifying distributions, detecting associations. But description is not trivial. Social science has historically undervalued descriptive work, even though good description is foundational. The creation of journals like Journal of Quantitative Description (where Barari published) reflects a belief among many computational scholars that rigorous description is a necessary scientific contribution. What distinguishes descriptive text analysis from explanatory research is usually design. Explanation requires linking language patterns to mechanisms, through causal inference, experiments, panel designs, or theoretically grounded modeling. That doesn’t mean computational text analysis disappears; it just becomes one component in a broader research design. For example, think back to the Bail experiment from last week: computational methods were embedded within a causal design.

## 1.5. Namuun Tsegmid
Feb 10 9:22pm
| Last reply Feb 14 9:34pm

Reply from Namuun Tsegmid
Muddiman et al. (2019) argue that context dependent dictionaries require manual validation to preserve theoretical nuance and avoid misclassification. However, manual validation requires trained coders, iterative review, and substantial time and funding. How do we justify that investment empirically? What level of measurement improvement would make the cost of manual validation worth it, and how would we know that it meaningfully changes substantive conclusions rather than just marginal cases?

Barari (2024) measures partisan signals using a reference corpus bigram approach with limited manual pruning. If Barari (2024) had applied manual validation to partisan phrases, would the main finding that corporate brands lean Democratic likely change in some wat? Or would validation mostly adjust small cases without altering the overall results?

### 1.5.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 9:34pm

Reply from Alvin Zhou
On the first question of how do we justify the investment in manual validation empirically? There are two answers. The first is more strategic: if the dictionary development can stand on its own as a methodological contribution, then the investment is easier to justify. In many cases (like Muddiman), the dictionary paper is actually part of a larger project. They extracted the measurement-development component and turned it into a publishable contribution. If you can generate multiple papers — one methodological, one substantive — then the time and funding make more sense. But often, dictionary development is simply a design necessity. If you are studying a context-specific or under-theorized phenomenon, you don’t have a validated tool available. So you must build one. This creates a structural inequality problem in the field: well-studied constructs have reusable tools; emerging or marginalized contexts require more labor and investment to even get to measurement.

As for whether validation meaningfully changes conclusions — in practice, dictionary developers rarely frame the question that way, because they often do not have a competing validated tool to benchmark against. The lack of alternatives is precisely why they are building the dictionary in the first place. Ideally, you would compare multiple operationalizations and test robustness. But when no alternative exists, the focus shifts to internal coherence and theoretical grounding rather than comparative performance.

On your Barari question: I genuinely don’t know whether manual validation would materially change the substantive finding. My intuition is that it would likely adjust edge cases rather than overturn the main pattern, but that’s speculative.

## 1.6. Jiarou Chen (she/her)
Feb 11 10:45am
| Last edited Feb 11 10:46am
| Last reply Feb 14 8:14pm
View History

Reply from Jiarou Chen
Chen et al. (2022)'s article is particularly inspiring in three aspects: how to handle the data of multi-level nested interactions among different users, how to establish a connection between users' replies in a single event and their daily language usage, and how to identify and eliminate the influence of potential Astroturfer accounts (50 cent parties). Regarding the first point, during my daily observations, I have noticed that people are not only more willing to reply to comments they agree with, but also more likely to reply to comments they strongly oppose. Both of these possibilities can lead to longer diffusion chains, but they may lead to different conclusions. I wonder if this article has discovered such a situation? Moreover, nowadays many comments appear in the form of memes. So, how can we compare comments that incorporate different modalities such as text and images? Are there any unified analysis methods or evaluation criteria?

For the second point, this method seems to be helpful for understanding why some users express certain opinions. I'm wondering whether it might be applicable to the analysis of public opinion in consumption scenarios. For example, Huawei (a Chinese brand) has become a strong symbol of patriotism. Even if people reply with "far ahead" (遥遥领先), it doesn't necessarily mean that the user truly supports Huawei. It could be that the user is not even a Huawei consumer. For instance, they might just frequently express extreme national identity opinions on social media and piggyback on the trend of Huawei.

Regarding the third point, I was surprised to see that the participation data of FCPU's posts was not better than that of real people. But the question is, does this mean they have no influence? How do we assess their influence? In the current online environment, we can see many live broadcasts and videos with bullet screens. These bullet screens may make it more difficult to track the information of individual users. So, are there any methods to identify Astroturfer accounts and their influence in this context?

Additionally, I am quite curious as to why its hypotheses are all about comparison of in-group favoritism versus non-in-group favoritism, as well as out-group hostility and non-out-group hostility, rather than directly comparing in-group favoritism and out-group hostility?

 

Unlike the previous article, although Brady et al.(2017)'s paper also uses the dictionary method to analyze the vocabulary, emotions and contagion effects related to political topics on social media, it has incorporated many robustness analyses and sensitivity analyses. I feel that I haven't fully grasped the reasons for doing this. It seems that, first of all, since the Twitter API is unable to accurately identify the origin of the retweet chain, it is necessary to retrace the original tweet in order to correctly estimate the dissemination scope of the same tweet. Then, in terms of verifying the validity of the dictionary, since there is no existing dictionary of Chinese national identity, the previous article needed to manually code to form a new dictionary, and then combine machine coding to supplement the dictionary. The main goal was to reach consensus among researchers. However, this article focuses on moral + emotional language, and the dictionary was constructed by extracting subsets from the moral dictionary and the emotional dictionary respectively. Therefore, manual verification of the dictionary's validity is still necessary. But the main goal here is to obtain consensus among the general public (users?). Why is that? Furthermore, this article also excluded cases where celebrities reposted content or where the same user posted multiple times. However, this aspect was not mentioned in another article (although Chinese celebrities are unlikely to actively engage in political topics==). Is this mainly because the model is unable to account for the effects brought about by these two factors, or are there other reasons?

### 1.6.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 8:14pm

Reply from Alvin Zhou
On the first point: you’re right that comments we observe are often polarized comments. If people don’t feel strongly, they usually don’t comment. That alone already creates a selection bias in what we see. As for memes, you’re also right that there is surprisingly little large-scale research on memes in comment sections. Before LLMs, scaling content analysis of memes was extremely difficult: images and videos are already harder to process than text, and memes are highly context-dependent, full of irony and sarcasm. Even for human coders, they’re hard. With multimodal LLMs, this will likely become more feasible, but we’re still early.

Your Huawei example is actually a very good research intuition. Using brands as vehicles for national identity expression is under-studied, especially from the communication perspective (maybe a good research idea?). From the brand side, that also raises interesting strategic communication questions: can we use that identity for marketing purposes?

On the FCPU point: I’m not entirely sure which specific concern is bothering you. If this still feels unclear, let’s talk in person and you can point to the exact part of the paper.

On the hypothesis structure: what they’re doing is fairly standard. They code two independent binary variables: in-group favoritism (1/0) and out-group hostility (1/0). That naturally creates four categories (11, 10, 01, 00). In regression, you can estimate the independent contribution of each dimension. If you’re suggesting directly comparing the “10” group to the “01” group descriptively, yes, they could have done that as a supplementary comparison. But methodologically, treating them as separate 1/0 predictors is very conventional and clean.

On Brady et al. (2017): they did not need to reconstruct retweet chains; they used retweet counts as the dependent variable. The reason they conduct multiple robustness and sensitivity checks is partly because morality and emotion have well-established dictionaries, so they can test whether results hold across different dictionary specifications. In contrast, in the Chen paper, national identity did not have an established dictionary, so they had to build one from scratch and validate it more carefully. When you’re using existing dictionaries, robustness checks help demonstrate that your findings are not driven by one specific operationalization.

On excluding celebrities or repeated posts: this is most likely about avoiding distortion from extreme outliers. Celebrities can generate massive engagement unrelated to the linguistic features of interest. Statistically, this is similar to trimming outliers to prevent a few high-leverage observations from dominating the model.

## 1.7. Carolina Aguiar Da Silva
Feb 11 10:46am
| Last reply Feb 14 12:07pm

Reply from Carolina Aguiar Da Silva
Brady et al.

I really enjoyed this article, I think I’m starting (slowly) to understand computational methods better. I do have two questions, thinking about future projects I might work on. I see that they used the Twitter API for this study, but I did some searching and saw that now there is the Meta Content Library for other social media platforms. I was wondering if it is less safe to get information from the Meta Content Library (to study Instagram, for example) because it is controlled by the company, while the Twitter API is more open for research and therefore offers more data authenticity. Another thing, when collecting data with keywords, is there a risk of misclassification when words change meaning in different contexts, such as with memes or irony, specially because they are talking about emotion? Is that something I should be careful about? Are pilot tests with participants (to validate the word lists) sufficient to ensure construct validity of the categories?

 

Van Atteveldt et al. 2021

Brady et al. use validated dictionaries and assume that they accurately capture moral emotion in order to draw conclusions. However, Van Atteveldt et al. show that dictionaries often operate randomly and argue that validation should always be carried out in the specific domain. Is there a gap between the recommended methodological rigor and empirical practice in moral psychology? Does this invalidate or merely weaken the conclusions?

### 1.7.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 12:07pm

Reply from Alvin Zhou
On APIs: one small correction first, both the Twitter API and the Meta Content Library are company-controlled infrastructures. Twitter was once relatively open and research-friendly, with clearer documentation of sampling and access. After the platform change in ownership (cue Elon), access became extremely expensive. In that sense, neither system is “independent.” Both are shaped by company-level decisions and internal/external politics.

Right now, collecting Twitter data is not only costly, but for many research questions, Twitter is no longer the central platform it once was. As for the Meta Content Library, I haven’t personally used it, but if you’re considering it, you should apply early because approval takes time https://transparency.meta.com/researchtools/meta-content-library/Links to an external site. It’s not inherently “less safe,” but you should always assume that any company-provided tool defines what you can see and what you can’t.

<Freelon, D. (2018). Computational research in the post-API age.>

On keyword-based collection and misclassification: This is a very good concern. Memes, irony, sarcasm, and shifting meanings are notoriously difficult for dictionary approaches. Even with large language models, we are not perfect at detecting irony or sarcasm consistently. For higher-level interpretive questions, computational classification alone is often insufficient. You usually need either qualitative validation or human coding. For semantic drift (words changing meaning), techniques like word embeddings can help, and we’ll talk about that soon.

On pilot testing dictionaries: in theory, yes, validating word lists with participants would strengthen construct validity. In practice, most researchers rely on iterative refinement and validation strategies (e.g., dictionary validation procedures like those in the Muddihan et al or the Chen et al paper we discussed in class). It’s actually rare to recruit MTurk participants just to validate a dictionary, mostly because of cost and feasibility.

On Van Atteveldt et al.: it is always recommended to validate computational measures in the specific domain you’re studying. The more validation you do, the stronger the study. But there’s always a tradeoff, because validation takes time and resources. The lack of perfect domain-specific validation does not necessarily invalidate conclusions; it usually only weakens them. There’s a balance between ideal methodological rigor and what is realistically achievable in a given project. Usually, people will just say "let's do some validation, and if it looks good enough, let's send it out for review and see what other validations reviewers ask from us."

## 1.8. Eun Sun Kyoung
Feb 11 3:19pm
| Last reply Feb 14 8:38pm

Reply from Eun Sun Kyoung
1. I thought Brady et al. (2017) was a great example of text analysis using dictionaries. I think the way they divided emotional, moral, and emotion-moral words using existing data was efficient. Their exploratory analysis was particularly interesting to me. They explored the effects of specific discrete emotions and also compare impact of low-arousal emotions like sadness to the high-arousal emotions of anger and disgust. This reminds me of the Week 2 reading (Lee, J. K. (2021). Emotional Expressions and Brand Status.). I was curious whether low-arousal and high-arousal emotions are conceptual things, or if this study measured and scored emotions like Lee, J. K. (2021). Also, related to moral foundation theory, I was curious if we could categorize words for each moral foundation ands whether the retweets of each category differ by political ideology.

2. I thought the research goal of Muddiman et al. (2019) was valid. Particularly, the characteristics of the concept 'incivility', which are context-based and that the definition varies by studies or dictionaries, strengthened the rationality for the research goal. However, I wonder whether the study's manually validated organic dictionaries approach was the optimal method. Feuerriegel et al. (2025) compared dictionary-based approaches, representation-based machine learning, and large language models. Drawing on that, I am curious how practical the study's method (manually validated organic dictionaries) is for addressing context-based words. The study justified their method explaining that incivility words are scarce and that the mechanism of other methods is a black box. But, I was wondering if we could make a supervised machine learning model using hand-coded data of this study. In that case, even though the mechanism would still be black box, it may capture contexts well. I was wondering whether it has additional advantages compared with this study's method. Also, I was wondering what  other method options we have for now, with the advancement of text data analysis, particularly LLM. 

### 1.8.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 8:38pm

Reply from Alvin Zhou
On Brady et al.: the distinction between low-arousal and high-arousal emotions is primarily theoretical. Prior psychological literature defines emotions along this arousal dimensions I think. Brady et al. are drawing on that framework rather than inventing it. They operationalize it through dictionaries, but the conceptual distinction comes from theory.

On your moral foundations question: that’s a very good intuition. Yes, you can categorize language by specific moral foundations (care, fairness, loyalty, authority, purity) and then examine whether diffusion differs by ideology. You should read: Graham, J., Haidt, J., & Nosek, B. A. (2009). Liberals and conservatives rely on different sets of moral foundations. Journal of Personality and Social Psychology, 96(5), 1029–1046. https://doi.org/10.1037/a0015141Links to an external site.

On Muddiman et al.: your instinct about supervised machine learning is correct. In principle, you could hand-code a subset of data and train a supervised classifier. That would likely capture contextual variation better than a strict dictionary approach. The tradeoff is interpretability. Muddiman’s approach emphasizes transparency: researchers can clearly show which words are included and why. A supervised model might perform better but be harder to interpret.

To be honest, if someone were to run that study today, many researchers would default to machine learning or LLM-based approaches rather than purely organic dictionaries. The field is moving quickly, and LLMs are disrupting many of the methods we’ve been discussing. That said, the fundamental tradeoffs remain: interpretability, transparency, cost, and validation. We’ll talk more about how LLMs change this landscape later in the course.

## 1.9. Jikai Sun (he/him)
Feb 11 3:45pm
| Last reply Feb 14 9:14pm

Reply from Jikai Sun
My questions this week are mainly focused on the use of dictionary-based methods in text analysis.


Specifically, I am concerned about how the lack of context-level understanding in dictionary-based sentiment analysis may affect research accuracy. Taking Brady et al. (2017) as an example, their approach to identifying sentiment relies solely on the frequency of words appearing in predefined dictionaries. Therefore, I suppose that the inferences drawn from their findings should be more cautious. That said, the extent of inaccuracy brought by dictionary-based methods may vary depending on the research context. For example, in certain contexts, people prefer to express their viewpoints directly, without using too much expression styles like sarcasm.


Thus, my question is: (1) Nowadays, there are many efforts to mitigate the issue that dictionary-based methods lack sensitivity to context. How about the performance of current cutting-edge dictionary-based methods regarding this issue? Do they have the ability to precisely detect those subtle meanings? (2) How should we understand the weakness of dictionary-based methods? Is the lack of contextual understanding the only issue? 


The studies of Van Atteveldt et al. (2021)  and Muddiman et al. (2019) evaluate the performance of dictionary-based methods and make efforts to improve it. However, their research was conducted before the widespread adoption of large language models. In the current technological context, what are the strengths, limitations, and appropriate use cases of different text analysis approaches, like dictionary-based methods, embedding methods, large language models, and human annotation? Is there any approach that performs better across most tasks?

### 1.9.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 9:14pm

Reply from Alvin Zhou
On your first two points: I would say dictionary methods are generally not well-suited for context-dependent meaning. Even cutting-edge dictionary refinements cannot truly “understand” sarcasm, irony, or shifting meaning. The core strength of dictionaries is transparency and interpretability. Researchers and journals often prefer them because the mechanism is completely visible. If a word is in the list, it counts. There is no hidden layer. But contextual sensitivity is not the only weakness. Another issue is temporal instability and cultural/langugae adaptability. Language evolves. Meanings shift across events, regions, and subcultures. A dictionary that works well in one political moment may perform poorly in another. Even if you could perfectly detect sarcasm today, what counts as sarcasm in 2026 may not look the same in 2030. It also doesn't translate well from English to Chinese for example, not just due to its languge difference but also its cultural context.

As I mentioned in another response, I suspect we are moving toward a world where classification largely falls into two broad regimes: 1. Human coding, for construct grounding and theory development; 2. LLM coding validated against human coding, for scalable deployment. Dictionary methods will still exist, but mostly for descriptive, transparent, or low-stakes tasks where interpretability is important.

## 1.10. Quin Mudry Nelson (she/they)
Feb 11 5:17pm
| Last reply Feb 14 9:07pm

Reply from Quin Mudry Nelson
1) The Atteveldt et al. article gave me some hope -- that algorithmic methods or machine learning can't fully replace human coding and validation in quality, due to how important context and nuance are to doing content analysis regardless of scale. I say this because, despite my interest in computational methods, I am not very keen on using AI and I hesitate to use machine learning methods for many reasons. I think that computers can assist humans in handling large amounts of data especially in cases of analyzing text, but computers in general do not do nuance. I had a computer science professor in undergrad who used to say, "at the end of the day, it's a bunch of 1s and 0s, there's no .5s" by which she meant that computers will do exactly as you tell them to do and nothing in between!
2) I actually really appreciated the Muddiman article because I work with data dictionaries right now, and designing a dictionary from scratch is difficult when you're essentially just brainstorming on your own or with a team. I appreciated their approach to using the data to form a context dependent dictionary from it, rather than doing the guesswork for the kinds of features you should start looking for. While my current study is far beyond the dictionary design phase I think this is a method I would like to implement in the future. I do question this method in one way as far as external validity goes -- it makes it difficult to draw comparisons if everyone were to devise their own dictionaries without also using some of the standard dictionaries in tandem so that similar types of text data can still be compared across samples and over time.

### 1.10.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 9:07pm

Reply from Alvin Zhou
On your second point: yes, developing your own dictionary — like Muddiman or Chen — almost necessarily limits external validity. A context-dependent, organically developed dictionary is tailored to a specific dataset, time, and discourse environment. You cannot simply copy-paste it into a different context and assume it travels well.

If everyone builds their own dictionary, comparability suffers. But if everyone blindly applies the same “standard” dictionary across contexts, construct validity may suffer. Even widely used tools like Moral Foundations dictionaries originated in relatively narrow settings. Over time, they became normalized and applied broadly — sometimes without careful revalidation. So there’s a tradeoff:

Organic dictionaries → higher contextual validity, lower portability.

Standard dictionaries → higher comparability, risk of conceptual drift.

The best practice, when possible, is often to do both: use a context-specific dictionary while also running analyses with a widely used one to check your results.

## 1.11. Jessica Tuleassi
Feb 11 8:44pm
| Last edited Feb 11 8:44pm
| Last reply Feb 14 9:46pm

Reply from Jessica Tuleassi
1. Given that the organic dictionary method yields a significantly lower false-positive rate (4.3%) compared to popular sentiment tools like Lexicoder (30.8%) or LIWC (22.8%), but is intentionally 'conservative' and likely underestimates the total volume of content, how should we define 'accuracy' in large-scale content analysis? Is a 'reliable signal' that misses data points scientifically superior to a comprehensive but 'noisy' analysis that may not be replicable over time?
2. I have been thinking about the financial barriers associated with computational research and data collection. Computational methods are becoming increasingly central across disciplines, and I’m fascinated by the wide range of tools and software scholars use to gather and analyze data. 

How are students and early-career scholars expected to engage in computational work when so many data sources and tools are paywalled or resource-intensive? What strategies exist for students who want to pursue computational methods but lack financial resources? Are there open-data alternatives, collaborative models, or institutional infrastructures that help bridge this gap? More broadly, how might these financial barriers shape who is able to do computational research?

### 1.11.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 9:46pm

Reply from Alvin Zhou
Good question. This connects directly to the accuracy / precision / recall / F1 discussion I sent out yesterday. Take another look at that announcement.

On the financial barrier point: this is such a good observation. I think there are really two sides to this. On one hand, many people argue that computational research is actually relatively accessible. A lot of data are online. Many companies like Google and GitHub provide free services/credits if you are verified with an edu email. Many package developers strongly believe in open science and build tools for free. Many of the R and Python packages we use are created by individuals volunteering their time. In that sense, computational research can be low-cost.

On the other hand, the very top-tier computational social science studies are becoming more and more expensive. But I also don’t think this is unique to computational research. Top-tier quantitative studies can require 10,000+ participants, field experiments, or proprietary data. High-end qualitative research can require years of ethnography, travel, access, and personal connections. Sometimes qualitative work requires social capital and institutional access that is just as hard to obtain as funding for large datasets.

You should also remember that the papers on our reading list are usually the top of the top. They are not the norm. A “normal” computational communication paper does not require massive infrastructure. The same is true in other traditions. So yes, resource inequality is real. But it is not unique to computational social science, and my syllabus (as an instructor, I want to select the best for you to read) distorts that even more.

## 1.12. Jiakun Liang
Feb 11 9:30pm
| Last reply Feb 14 8:53pm

Reply from Jiakun Liang
1. Van Atteveldt et al. (2021) found that “none of the used dictionaries come close to acceptable levels of validity, and machine learning, especially deep learning, substantially outperforms dictionary-based methods.” However, studies from this week’s readings, such as Chen et al. (2022) and Brady et al. (2017), still rely on dictionary-based automatic text analysis. For instance, Chen et al. (2022) followed a dictionary-based textual analysis to classify in-group favoritism and out-group hostility language in social media posts. However, Chinese language is known for its context dependency, semantic ambiguity and frequent use of implicit meaning. I think it is not accurate to infer the meaning of the whole sentence based on specific words. Therefore, to what extent can the use of dictionary-based approaches in these studies be justified in terms of measurement validity? Can the use of machine learning approaches capture the such contextual meanings?

2. Chen et al. (2022) and Brady et al. (2017) mentioned the concept of diffusion or spread of content in social networks. Brady et al. (2017) measured the spread of moral contagion by the predicted retweet counts, while Chen et al. (2022) measured the diffusion size with by the number of users a related message reached at all stages of the diffusion chain. However, diffusion patterns may differ in terms of depth and breadth, such that a post can be spread through a long chain (o --> A --> A1 --> A2 --> A3...) or reach the same number of users through a wide diffusion where many users share the original tweet (o --> A, B, C...). My question is how might the consideration of different diffusion patterns in terms of depth and breadth influence the interpretation of the findings?

3. A technical question for Chen et al. (2022): Given that Weibo posts are typically short and therefore may contain only a limited number of relevant words (probably three to five), while engagement metrics can vary dramatically across posts, this raises the question of whether such measures of independent variables with low variances can meaningfully account for the highly varied user engagement.

### 1.12.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 8:53pm

Reply from Alvin Zhou
On the dictionary issue: to be very honest, I personally am skeptical about the measurement validity of many dictionary-based studies. Language, whether English, Chinese, or any other language, is deeply contextual and nuanced. Inferring sentence-level meaning from isolated words is always imperfect. That said, dictionary methods are often justified by transparency and interpretability, and historically they were easier for journals to evaluate.

Can machine learning capture contextual meaning better? In principle, yes, especially deep learning and LLM-based approaches. They are much better at handling context, sarcasm, and semantic ambiguity. But adoption is partly a paradigmatic and review-process issue. Journals are still catching up. I do think we are moving toward a world where classification increasingly falls into two broad camps: (1) human coding and (2) LLM coding validated against human coding.

On diffusion patterns: this is a very important point. Depth and breadth can imply different mechanisms of spread. If you’re interested in this distinction, you should read: (we have this as a required reading in the network section of the class) 

Vosoughi, S., Roy, D., & Aral, S. (2018). The spread of true and false news online. Science, 359(6380), 1146–1151. https://doi.org/10.1126/science.aap9559Links to an external site.

On your technical question about low-variance independent variables: That’s why Chen et al. include many control variables (e.g., number of followers) to absorb structural differences that explain large engagement variance. The idea is to isolate the linguistic effect net of these structural factors.

## 1.13. Kaiyi Yu
Feb 11 9:35pm
| Last reply Feb 14 10:01pm

Reply from Kaiyi Yu
Muddiman et al.(2019) is really interesting to me. I like how they balance accuracy and coverage (the scale of dictionaries). Some of their method choices are very inspiring. They first enlarged the potential words in the dictionary by stemming the words in the dataset into features. In this way, they covered  more words related to incivility. Compared to supervised learning which is based on training data from a small proportion of comments, this approach may avoid omitting many uncivil words, since the overall percentage of these types of words is very small. Second, the authors seem to rely primarily on manual selection and coding to narrow down the words and further develop dictionaries. Their development of dictionary entries seems to rely on whether the words are frequently used in an uncivil way in the current discourse environment and context. I feel this evolves quickly, especially in the context of cyberspace. Words of praise this week may turn into sarcasm and mockery next week. This is also somewhat different from context dependency, which I understand as individual posts providing totally different contexts and word uses for the same word. For example, a nude picture may represent an educational purpose in one instance but prurient interest in another case. Can dictionary-based text analysis possibly deal with this context-dependent perspective?

I also have a question about using customized, self-created dictionaries versus  out-of-the box dictionaries created by others. How should we decide when to use each of them? I think this choice may be based on the research question and definition. For example, in Muddiman et al.(2019), the definition of incivility is broader than simply impoliteness and personal attacks. Also, some dictionaries seem to be really time-based, context based, culture-based as words evolve to represent quite different things over time and may only be applicable during a certain period, such as the national identity dictionary developed by Chen et al. (2023). Does the self-created dictionary also have weaknesses,such as cost consuming, or having validity concerns, because it has not been examined in many studies?

### 1.13.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 10:01pm

Reply from Alvin Zhou
On language evolving quickly in cyberspace: yes, that’s a real limitation. Dictionary-based methods struggle when meanings shift rapidly or when interpretation depends on subtle contextual cues. In principle, you can make dictionaries more complex. For example, you could introduce conditional logic — a word only counts if it appears with certain terms and without others. That’s essentially moving toward a rule-based or decision-tree structure rather than a simple 1/0 keyword match. But the more complex you make it, the closer you get to supervised learning logic.

Still, even with these refinements, dictionaries are not great at handling context dependency (like sarcasm or memes). That’s just a structural limitation of the approach.

On your second question about self-created versus out-of-the-box dictionaries: yes, this comes down to research question and construct definition. If the concept is well-established and repeatedly measured in the literature, it makes sense to use validated tools. If the concept is new, culturally specific, or under-theorized (like national identity in a specific political moment), you may need to build your own. Yes, self-created dictionaries absolutely have weaknesses. They are time-consuming, context-bound, and often lack external validation because they have not been tested across multiple studies (because they are new!). That limits portability and comparability. At the same time, widely used dictionaries also face problems when applied blindly across contexts. So again, it’s a tradeoff between contextual validity and generalizability. It is always research-question-dependent.

## 1.14. Wenwen Cao
Feb 11 10:49pm
| Last reply Feb 14 6:53pm

Reply from Wenwen Cao
Across Muddiman et al. (2019), Chen et al. (2023), and Brady et al. (2017), dictionary-based approaches are carefully constructed and often manually validated. However, van Atteveldt et al. (2021) show that most dictionaries fail to reach acceptable levels of validity, and Feuerriegel et al. (2025) highlight the interpretability–accuracy trade-off in NLP methods.

1. My question is: Under what theoretical conditions is a conservative, manually validated dictionary (like Muddiman’s organic dictionary) preferable to higher-accuracy but less interpretable machine learning or LLM-based approaches?

Building on van Atteveldt et al. (2021), who emphasize that domain-specific validation is essential and that predictive accuracy alone does not guarantee construct validity, and Feuerriegel et al. (2025), who describe the increasing use of large language models for automated annotation:

2.  My question is: If large language models can approximate human annotation at scale, does this meaningfully reduce concerns about construct validity, or does it simply shift the problem from validating dictionaries to validating model outputs and prompts? In other words, when model reasoning is opaque and potentially shaped by pretraining biases, how should we assess whether an LLM truly captures a theoretical construct (e.g., moral emotion, identity language, incivility), rather than merely achieving high predictive accuracy?

### 1.14.1. Alvin Zhou (he/him)
AuthorTeacher
Feb 14 6:53pm

Reply from Alvin Zhou
On the first one: I think the short answer is that it depends on where you sit on the interpretability-accuracy spectrum described by Feuerriegel et al. (2025). If interpretability is central to your theoretical contribution, then a conservative, manually validated dictionary might be better, even if it is less accurate in a predictive sense. For example, if you are studying something that is very theory-laden (like moral emotion, identity signaling, incivility), and you need to be able to point to specific linguistic markers and explain them transparently, a dictionary gives you that clarity. It’s also sometimes a strategic choice: certain journals or reviewers are more comfortable with interpretable methods than with opaque LLM methods. And in some domains, the phenomenon really does revolve around fairly stable keywords, which makes dictionary approaches more defensible.

On the second question: Instead of validating a dictionary, you now have to validate prompts, outputs, and alignment with theoretical definitions. In practice, many researchers validate LLM annotations by checking agreement with human coders. If the LLM codes similarly to humans, that’s often treated as sufficient. I think the "construct validity" problem is very valid, but I think it can only be solved by constructing a good prompt / a good instruction sheet so that LLM / human coders actually code the thing you want them to code.