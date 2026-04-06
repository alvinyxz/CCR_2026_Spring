# 1. Discussion Topic: [Week 7] Readings[Week 7] Readings

Find the readings for the week at: https://z.umn.edu/J8500_Syllabus

The course is organized as a seminar, which means all students are expected to attend all classes, have read and thought about all readings prior to each class, and participate actively and productively in class discussion.

In general, before class, you should have carefully thought about: (1) how the computational methods used in each study helped address the specific research questions of interest to the authors, (2) in what sense these computational methods could extend conventional methods, (3) what are their major assumptions and limitations, and (4) what new arenas for future research these computational methods could open.

To facilitate discussion, each week, all students will submit (to the whole class and me) at least TWO thoughtful questions or comments of interest to you emerging from the week's readings. These discussion questions/comments should be posted to the "Discussions" section on Canvas (named "[Week X] Readings") at least 24 hours before the scheduled class meeting. You are also encouraged to read other students' questions/comments and reply to them. Regardless of whether you are the Reading Lead for a certain week's readings, you should still post to participate in the discussion.

Canvas Discussion & In-Class Participation will be evaluated based on: (1) the depth and quality of your contributions to the Canvas Discussion, and (2) the engagement and quality of your participation in class.


## 1.1. Anastasia Micich
Mar 1 8:55am
| Last reply Mar 6 2:51am

Reply from Anastasia Micich
Lu et al (2025)

1. The dataset covers a single 12-month window (June 2020–June 2021). How might the temporal scope of data collection affect the conclusions about the decentralized model? What computational strategies could enable longitudinal analysis at this scale without prohibitive cost?

Dietrich et al. (2019)

2. The authors use closed-captioning timestamps from HouseLive to segment 6,432 hours of audio into 74,158 individual speeches. What sources of error might be introduced at this segmentation stage — for instance, when legislators yield mid-speech, interject, or are interrupted — and how might those errors propagate into the pitch estimates? Did the authors do enough to characterize and address this noise?

 

### 1.1.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 2:51am

Reply from Alvin Zhou
For the first question, I think this concern applies to almost any empirical study. Researchers always have to define a time window for data collection. As long as the selected period is not severely affected by some unusual event, for example, a long internet shutdown or a major structural disruption, then using a one-year window is generally reasonable. In this case, if the broader political communication system remained relatively stable during that period, the temporal scope should not fundamentally change the conclusions.

If the goal were to study how the system evolves over time, then the authors could extend the design into a more explicitly longitudinal analysis. For example, they could model the system month-by-month or day-by-day and examine changes using time-series approaches such as lagged regression models. But my impression is that this paper is primarily focused on testing a theoretical argument about decentralized propaganda rather than modeling temporal dynamics in detail.

For the second question, segmentation using closed-caption timestamps could introduce some noise. For example, if legislators yield mid-speech, are interrupted, or if multiple people speak close together, those moments might not be perfectly captured in the segmentation process. In some cases, interruptions could be mistakenly included in the wrong speaker’s audio segment, which could affect the pitch estimates.

That said, the approach still works reasonably well because congressional speech is usually relatively structured (I think?), most of the time legislators speak in turn without constant interruption. If the environment were much more chaotic, with frequent overlapping speech, the pipeline would likely break down. But given the institutional structure of congressional proceedings, the level of noise introduced by these segmentation issues is probably limited.

## 1.2. Kaiyi Yu
Mar 2 1:21pm
| Last reply Mar 6 12:36am

Reply from Kaiyi Yu
This week’s readings are all interesting. Kim et al.’s (2024) study compared the strength of associations between emotional elements and engagement across various modalities. I am wondering why this study analyzed the textual elements in the captions and transcripts as well as the visual elements in thumbnails but not the sound elements in videos. Audio can also contain a great deal of emotional detail. For the visual modality, this study coded emotional expressions presented in the thumbnail. This makes sense to me because thumbnails, compared to other frames in the video, have higher exposure. But I am curious: if the whole video were coded, would the regression results for visual elements be similar to those for transcripts? Both would be coded as intensity of emotional elements, such as the frequency of emotion-related words or facial expressions in one video.

My highlight of Lu et al. (2025) is their use of ViSiL similarity tool to compare similarity between videos. It looks like an advanced tool for making systematic comparisons that consider not only visual, but also audio and textual elements. It sounds like a good way to measure viewpoint diversity. But I am wondering whether this tool has many limitations. From the supplementary material, I learned that the research team also conducted a lot of manual coding to map the similarity patterns, such as watching 17887 videos on the topic of the Tianhe space station to explore how video content at the local level overlaps with that at the central level. Does the ViSiL similarity tool only generate a similarity score without producing outputs such as which images or content are similar? In addition, the authors state in the reproducibility section that “ViSiL entails comparisons of over a billion video pairs, which would require more time and money than is typical for a replication” (Lu et al., 2025, p.11). I am curious how much it costs to use this tool. In addition, I am really interested in the finding of Lu et al.(2025) about the decentralized mode of information flow, in which propaganda-related videos flow from local-level accounts to central-level accounts. This is a very interesting finding. But I am wondering whether there is a more costless way to examine the information flow (in case ViSiL is an expensive tool to use, as discussed). Chinese law requires media outlets to attribute the original source when copying and republishing news content. Perhaps there could be an easier way to study patterns of copying videos between accounts than using similarity comparisons. 

### 1.2.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 12:36am
| Last edited Mar 6 1:51am
View History

Reply from Alvin Zhou
I think there are definitely other ways Kim’s study could analyze the data. For example, for the audio channel, researchers could analyze the audio file directly, looking at tonality, pitch, or emotional cues in speech. There are now tools that attempt to detect emotion from audio signals, so in principle, you would not need to rely only on transcripts. The challenge, though, is validity and reliability. It is not always clear whether these tools can accurately identify emotions, especially in noisy environments like TikTok videos, where music, speech, and other sounds are mixed together (compare it with the 2019 APSR paper on congress speech, which are probably much cleaner sound files). So while audio analysis is possible, the methods are still less mature than those for text or image analysis. Given that multimodal analysis is still relatively new, what Kim et al. did was probably a reasonable design choice.

For the visual modality, they focus on thumbnails because thumbnails have the highest exposure and function as an entry point for viewers. But another approach would be to divide the video into frames and analyze emotional expressions across frames, then average those scores to produce an overall emotional intensity measure for the video. Some recent studies are starting to do this. My guess is that the results might change if we coded the entire video rather than only the thumbnail, but it is hard to know without running the analysis.

Regarding the ViSiL tool in Lu et al., I honestly have not used it myself. Video similarity analysis remains a relatively specialized skill, and it is one of the things Lu’s work is known for. My understanding is that these analyses are computationally and financially expensive because they require comparing very large numbers of video pairs. Even storing the raw video data alone can cost hundreds of dollars per month (Yingdan just told me it's around $300 per month for cloud storage for that data, as of today) before you even begin the analysis. (Yingdan told me she did the pairwise similarity analysis when she was at Stanford, where Google provided free cloud computing service to Stanford folks, so they didn't pay for the "computing/analysis" part of the service. However, the pairwise similarity ViSiL analysis took around half a year to complete.)

Your suggestion about tracing copying through attribution is actually very interesting. If Chinese media outlets are required to cite the original source when reposting content, in principle, you could construct an information network using those citations (treating each account as a node and each repost or attribution as a tie). That would allow you to analyze diffusion patterns with network analysis, which we will discuss later in the course. The main caveat, however, is that in practice not all outlets strictly follow attribution rules, so the network might still miss some connections.

## 1.3. Isabel Garlough-Shah
Mar 2 6:33pm
| Last reply Mar 6 3:12am

Reply from Isabel Garlough-Shah
This week’s readings discussed how computational analyses can be used to evaluate multimodal content ranging from anti-vaccination misinformation, climate change, to politicians’ content and speeches. The Peng and Kim articles were especially interesting to me this week and I had some questions about the methods. 

I noticed that in both the Peng and Kim articles the methods needed various computational tools (DNN’s, CNN’s, Junkipedia, automated face emotion recognition, computer-assisted emotion dictionary) to evaluate multimodal media. As a more logistical question, is there a standard set of tools to use when evaluating multimodal content or is usage based on preference? On a methodological level these studies utilized different validation methods of their software (clustering and comparing human vs. software coding). Why are there differing validation methods when it comes to facial recognition software? Is there a standard practice/choice for facial recognition software validation? Or is it dependent on the study/researchers?

Additionally, in the Kim article I had a question about findings surrounding the use of fear appeals. Previous studies within the health communication field demonstrate that the utilization of fear-based appeals can result in effective intention or behavior change. However, research also suggests that fear appeals can result in defensive processing where audiences end up ignoring or rationalizing messaging away. In the Kim study, “fear in video captions and transcripts increased the number of shares by nearly 20% and the number of likes by 32%” (p.601). Based on the magnitude of fear based appeals in anti-vaccination misinformation, should communication experts utilize fear appeals to combat anti-vax misinformation or should they stray away from fear appeals to reduce defensive processing?

### 1.3.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 3:12am

Reply from Alvin Zhou
I think the choice of tools is mostly based on researcher preference and what is currently common in the field. In multimodal research, I have seen many different packages used for image, video, and audio analysis. Because the field is evolving very quickly, there is not really a single standard toolkit yet. A practical strategy is to look at what recent papers in communication journals are using. In some cases, it can even be helpful to reach out to researchers working in that area to ask which tools they currently recommend, since the available software changes rapidly. For lower-level visual features, such as brightness, contrast, or colorfulness, there are many packages that can measure them, and the results tend to be quite similar across tools. The key is to follow conventions used in recent studies and clearly document the method.

For facial recognition or emotion detection, a common validation strategy is to compare machine labels with human labels. For example, researchers might randomly sample images, have human coders label attributes such as emotion or gender, and then calculate correlations between human coding and the model’s predictions. If the results align reasonably well, that provides evidence that the automated coding is performing adequately.

Regarding fear appeals, I think this is an interesting theoretical question. In the Kim study, fear appears frequently in anti-vaccination videos because those videos are trying to make people afraid of vaccines. But that does not necessarily mean that public health communicators should use the same strategy to counter misinformation. Communication strategies that work for spreading misinformation may not work the same way when trying to correct it. In other words, the persuasive logic on the two sides might be quite different.

## 1.4. Jiarou Chen (she/her)
Mar 4 10:41am
| Last reply Mar 6 3:28am

Reply from Jiarou Chen
(Kim et al., 2024)

This study implements analysis of facial emotions in thumbnails, textual emotions in titles, and textual emotions in audio transcripts. It assumes that different modalities perform different roles when they are affecting engagement metrics, but I did not find the detailed explanation for it (Did I miss??). As title and thumbnails are the most eye-catching content of a video, while audio scripts are much longer in length, how can we control the potential impacts of these differences on engagement metrics? It also makes me wonder why this study tests interaction between partisan identity and anger in each modality, but not including interactions across three modalities' emotions. Additionally, will potential emotional inconsistencies across modalities in one video influence the results? If the inconsistencies do not exist, why can't the emotional scores of the three modalities be directly combined into a single variable for analysis?

(Lu et al., 2025)

I'm a bit confused about the process of comparing user engagement. From my understanding, the authors combine two independently stratified samples (the hand-labeled sample of 18,571 videos, and 244-day ViSiL sample for testing similarity). Then, they select the overlapping videos in those two sets and use this smaller set (set 3) for analysis. But I fail to find the description of set 3. For example, how many videos are there in it? Is the proportion of account types consistent with that of the whole video set? The tool of ViSiL is fascinating, but why don't the authors use it to test the similarity based on the hand-labeled sample? If there are limitations in terms of computational power or cost, is it possible for us to directly extract the original or forwarded information from the video text or the forwarding links?

### 1.4.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 3:28am

Reply from Alvin Zhou
The interaction between partisan identity and anger is mainly driven by the concept of affective polarization. In political communication research, affective polarization is typically defined as anger or hostility toward the out-party. Because of that, it makes theoretical sense to model an interaction between partisan identity and anger. There is not really a comparable theoretical concept involving partisan identity interacting with emotions like happiness or fear in this context.

For your first question, I am not entirely sure what the concern is. If the authors regress engagement on emotional measures from the three modalities, thumbnails, captions, and transcripts, then whichever modality has the stronger effect can be interpreted as having a stronger relationship with engagement. If you are suggesting combining all three modalities into a single emotional measure, that is an interesting idea, but it would answer a slightly different research question. The current paper is trying to see how emotions expressed in different modalities influence engagement differently.

If the goal were simply to examine whether emotionality overall predicts engagement, then you could combine those measures into a composite variable. In practice, you would probably need to standardize or rescale the scores first (for example, scaling each modality to the same range, from 0 to 1) before combining them. That could be an additional analysis, but it is not the main question the authors are trying to answer.

Regarding emotional inconsistency across modalities, that would also imply a different research design. For example, you could calculate the difference between emotional scores across modalities and test whether greater inconsistency predicts engagement. That would be an interesting follow-up study, but again, it addresses a different question from the one in this paper.

For your question about the datasets in Lu et al., my understanding is that the overlapping set (what you refer to as “set 3”) is discussed in the Supporting Information Appendix E.3. The reason they likely used overlapping samples is to examine whether differences in audience engagement were driven by different types of content (i.e., "category"). In other words, they wanted to show that engagement differences are associated with propaganda-related videos rather than simply entertainment content. The hand-labeled sample is mainly used for topic classification, not for measuring video similarity. The ViSiL tool is specifically used to compute video similarity, which is a different task. My understanding is that ViSiL works by comparing visual features frame by frame across videos to detect highly similar sequences. If that is the case, then the similarity score reflects actual visual overlap rather than just a vague sense of “similar vibe.”

Regarding extracting repost information from captions or links, that might work on some platforms, but it is less reliable for short-video platforms. Users often upload the same video with completely different captions or descriptions, so text alone would not reliably capture content copying. That is likely why the authors rely on visual similarity instead.

## 1.5. Carolina Aguiar Da Silva
Mar 4 12:35pm
| Last edited Mar 4 12:35pm
| Last reply Mar 6 3:55am
View History

Reply from Carolina Aguiar Da Silva
Kim et al., 2023

The authors validate automated emotion detection against human coding to assess how accurately the software identifies facial and verbal expressions. At present, however, the approach does not account for sarcasm or satirical uses of emotion. Thinking about the expansion of the method, is it possible to refine the coding scheme so that it can either detect sarcasm or be re‑interpreted through additional analytic lenses (for example, how people with specific partisan or sociocultural identities perceive and engage with these posts, based on prior literature)? This could amplify our understanding of the anti‑vaccination movement.

 

Peng, 2021

How do DeepFace, as used by Kim et al., and Face++, as used by Peng, differ in their functions and outputs when analyzing images? Assuming both tools are legal, and recognizing that DeepFace is a Python package while Face++ is a commercial API, is Face++ a more comprehensive option because it detects additional facial attributes beyond emotions? Moreover, Peng reports using “a VGG16 model pre-trained on a combination of the ImageNet and Places365 data sets” during the analysis. What does this pre-training setup technically imply, and does it mean that Face++ is applied only at the final stage of the processing pipeline, after VGG16-based feature extraction and clustering?

### 1.5.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 3:55am

Reply from Alvin Zhou
For your first question, sarcasm and satire are actually very difficult for computational methods to detect. Even in natural language processing, sarcasm detection remains a challenging problem because it often depends on cultural context and subtle cues that computers do not understand well. Some studies have tried to detect sarcasm computationally, but the results are still limited. In practice, most researchers assume that sarcastic or satirical cases are relatively rare in large datasets. So even if some of them are misclassified, they usually do not change the overall patterns of the results very much. That said, it is still a limitation of automated methods.

For your second question, DeepFace and Face++ are similar in the sense that they both analyze facial attributes such as emotion, gender, and age from images. The main difference is that DeepFace is an open-source Python package, while Face++ is a commercial API service. Because Face++ is continuously updated by the company, its underlying model can change over time, which sometimes makes reproducibility harder. In contrast, DeepFace is more stable because the package version can be fixed in a research pipeline. In practice, some researchers even run both tools and compare the results, along with human validation.

Regarding the VGG16 model in Peng (2021), the authors did not train a new neural network. Instead, they used a pre-trained VGG16 model as a feature extractor (by "pre-trained," the authors are just saying that it is "off-the-shelf" software that other people have developed and what they did is just download and use). The VGG16 model had already been trained on large datasets such as ImageNet and Places365, which allows it to recognize objects and scenes. The authors fed their images into this pre-trained model, extracted the resulting feature vectors, and then applied techniques like PCA and clustering to group images (it is literally just a few lines of code... honestly, I think the authors made things unnecessarily complicated here, although what they wrote is technically correct). Face++ was used in parallel to extract facial attributes, while the VGG16 features captured broader visual scene information. Facial features and those scene features are parallel; both are treated as independent variables. There is no "before/after"; they could first run Face++ on the image, then run VGG16 on the image; it is the same thing. They are simply deriving a list of variables from the same image.

## 1.6. Jikai Sun (he/him)
Mar 4 4:48pm
| Last reply Mar 6 2:19am

Reply from Jikai Sun
This week’s readings cover multiple modalities in communication rather than simply texts. I am super interested in the work of Kim et al. (2023). Since videos cover all three major modalities, including texts, visuals, and audio, it is quite challenging to identify which specific modalities work (for example, if we found that videos can really have a certain influence, the influence could come from a certain modality or their combinations). Thus, when interpreting the results got from video analysis, should we treat a video as a whole, or granularly interpret based on its different specific modalities?


Qian et al. (2024) analysed visual contents and meta-level visual features of climate change images. There are two questions I am quite interested in: (1) Is it possible that the logic machines use to cluster images differ substantially from how humans interpret them? Would they follow highly abstract rules to classify images, which are beyond the way we understand those classifications? (2) How much do meta-level visual features work compared with content? And for different types of content, when do these meta-level visual features have a smaller or bigger impact?

### 1.6.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 2:19am

Reply from Alvin Zhou
For your first question, this is a really good point. Most multimodal research right now separates videos into different components: text (captions or transcripts), images (per frame, or thumbnails), and audio, and analyzes them separately. But this is not really how people experience videos. When we watch a video, these elements interact with each other. I mentioned to another student above that there is a book chapter coming out (likely in 2026 or 2027) arguing that multimodal analysis should move beyond treating image, audio, and text as completely separate modalities and instead analyze them more holistically. So the way Kim et al. approach this reflects the current stage of the field, but future work will likely move toward more integrated analysis of modalities together.

For your second question, the logic behind image clustering is actually quite similar to topic modeling. Topic models cluster texts based on the co-occurrence of words, while image clustering methods group images based on the co-occurrence of visual features detected by the model. There are always critiques of these approaches, e.g., people sometimes argue that topic models only capture superficial word co-occurrence patterns. But in practice, these methods often produce clusters that correspond reasonably well with meaningful themes. Image clustering works in a similar way: the patterns identified by the algorithm might not exactly match how humans categorize images, but they usually capture meaningful structure in the data. Regarding meta-level visual features in the Qian et al. paper, I think by "meta-level," you were refering to formal properties of the image (rather than the specific content), for example, features like brightness, color intensity, contrast, image composition, or the presence of faces? If so, my hunch will be that the cognitive efforts needed to interpret images will change which one (meta or content) has more impact: if it is low-effort, like food image / travel photos, I think meta-level data plays a more important role; while for cognitive-intensive images, actual content will matter? But it is just my guess. Good question though :)

## 1.7. Eun Sun Kyoung
Mar 4 5:29pm
| Last reply Mar 6 3:06am

Reply from Eun Sun Kyoung
Kim et al. (2024)

1. According to the findings of this study, fear stoods out in anti-vaccination videos and highlights the importance of fear appeals. However, with regard to H4 and the interaction between negative emotion and partisan identity, I am curious whether there is a particular reason why fear was excluded from the category of negative emotions.

2. We often say some videos seem to benefit from “blessing of the algorithm,” meaning they are naturally exposed to a larger audience. Others are intentionally pushed to go viral. In other words, some videos have much more exposures than others. This study also mentions that “the distributions suggest the presence of over-dispersion.” Given this, I wonder about the pros and cons of using engagement rate relative to view counts as DVs (numbers of shares, comments, and likes/ view counts) rather than the sole numbers of shares, comments, and likes.

### 1.7.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 3:06am

Reply from Alvin Zhou
I don’t fully understand your first question. My reading of the paper is that fear was not excluded from the analysis. In the main models, the authors include anger, fear, and joy as separate emotional variables when predicting engagement outcomes such as comments, shares, and likes.

For H4 specifically, the focus is on affective polarization, which they operationalize as the interaction between partisan identity and anger. Conceptually, affective polarization is usually defined as hostility or anger toward the opposing political group. Because of that, interacting partisan identity with anger makes theoretical sense in this context, whereas interacting it with fear would be less directly tied to the concept the authors are trying to capture.

Your second question is very good. I am not aware of many studies that systematically compare whether raw engagement counts, view counts, or engagement rates (e.g., likes divided by views) are better as dependent variables. My intuition is that many of these engagement metrics (views, shares, comments, and likes) are usually highly correlated with each other. Even view counts themselves tend to be very skewed or dispersed. Because of that, using raw counts versus normalized rates might not substantially change overall patterns in many cases, although the choice should ideally be justified by the research design.

## 1.8. Jessica Tuleassi
Mar 4 7:57pm
| Last reply Mar 6 2am

Reply from Jessica Tuleassi
1. Many computational studies seem to rely heavily on appendices to explain their datasets, coding procedures, and robustness checks. For instance, Kim et al. often direct readers to the appendix for methodological details. Is this standard practice in computational research, and how important are appendices for transparency and replicability? In cases where people cannot access these additional materials, how does it affect replicability, and what challenges might researchers face in making their work fully reproducible?

2. Both Peng (2021) and Quin et al. use unsupervised approaches (e.g., clustering techniques). I am curious to know if unsupervised methods used in visual analysis are conceptually similar to unsupervised learning approaches (e.g., topic modeling)? Since both seem to identify patterns in data without labeled training examples, do they rely on similar principles or algorithms?

### 1.8.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 2am

Reply from Alvin Zhou
Yes, this is very standard practice in computational research. I understand that it might feel strange if you are new to these methods. Even for my own papers, I still receive reviewer comments saying we should move more details into the main text because “nobody reads the appendix.” But in computational work, people actually do rely on the appendix quite a lot.

The main reason is that there are simply too many methodological details. If you include every preprocessing step, parameter choice, and robustness check in the main text, it would completely interrupt the flow of the paper. The purpose of the main text is to present the research question, theory, and key findings clearly, while the appendix documents the technical decisions behind the analysis. For that reason, appendices are extremely important for transparency and replicability. A strong appendix is usually a good sign in computational research because it shows that the authors are documenting their procedures carefully. We will also return to this topic later in the semester when we discuss research ethics and reproducibility.

For your second question, your intuition is correct. Unsupervised methods in visual analysis are conceptually similar to methods like topic modeling. Topic modeling identifies patterns based on the co-occurrence of words, while visual unsupervised methods identify patterns based on the co-occurrence of visual features in images.

## 1.9. Ruiheng (Rachel) Sun (she/her)
Mar 4 8:16pm
| Last reply Mar 6 2:12am

Reply from Ruiheng (Rachel) Sun
This week’s readings introduce different approaches to analyzing multimodal data.

I found the article by Kim et al. (2024) particularly helpful in finding one way to handle modality: converting non-textual content into text (e.g., captions or transcripts) and then applying text-based analysis. This could be considered as an indirect approach. For direct image analysis, however, Kim et al. (2024) and Qian et al. (2024) appear to adopt different technical approaches, relying on different Python packages. I’m curious whether there is a methodological reason to prioritize one approach over another. For example, is the choice primarily driven by the research question?

Another question I have is about the use of hashtags for data collection. Several of the articles we’ve read rely on hashtags to identify topic-relevant posts. In my understanding, this strategy seems widely accepted and practical, but hashtags may introduce sampling bias (e.g., only capturing users who actively label their content in a certain way). I wonder whether there are some other alternatives we could consider in the future?

### 1.9.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 2:12am

Reply from Alvin Zhou
I don’t think there is a strong theoretical reason why those papers use different packages. It is similar to topic modeling, you could run LDA or STM. Ideally, the substantive story should not depend heavily on which specific package you use, as long as the method is appropriate and properly justified. In practice, researchers often choose tools based on familiarity, available documentation, or what other scholars in the area are using. Right now, many researchers are also moving toward vision–language models (VLMs), which can analyze images and text together. So the methodological landscape is evolving quickly. The key point is that there is no strict rule about which package you must use; you just need to justify your choice.

Regarding hashtags, they are often used because they provide an easy way to identify topic-relevant posts. But you can also collect data using keyword searches. For example, instead of searching only for #BlackLivesMatter, you could search for the phrase “Black Lives Matter” more generally. This would capture posts that mention the topic without using the hashtag. More broadly, data collection is always tricky because you have to define boundaries for what counts as relevant data. It is almost impossible to guarantee that you captured everything you want and excluded everything you do not want. As long as the data collection strategy is clearly explained and justified, it is usually considered acceptable.

## 1.10. Qiling Wu (she/her)
Mar 4 9:01pm
| Last reply Mar 6 1:56am

Reply from Qiling Wu
Kim et al., (2024) 

This is a really strong paper and answers my previous questions about multimodal misinformation research! I have one question for this research, which is about their measurement of people's identity. As we all know, TikTok is a highly visual platform, yet the article measures identity exclusively through exact‑match dictionaries applied to captions and transcripts. This text‑centric operationalization likely underestimates visual identity cues, such as clothing, setting, symbols, sound effects, filters, and memes, that are central to how identity is performed and recognized on TikTok.

Peng, 2021

This is a really cool research paper! I am quite impressed by how the author combined the personalization theory and data to tell such a interesting political story. However, I have a question for using Face++. Facial emotion recognition tools may misclassify politicians’ professional fake smiles, which are strategic and highly performative. Although the author frame that as "strategic self-presentation", I think I still have construct validity concerns, especially given the common understanding of political affect as symbolic performance (e.g., the classic “baby‑kisser” metaphor). Maybe this is more suitable for other contexts?

 

### 1.10.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 1:56am

Reply from Alvin Zhou
That’s a very good critique. But when evaluating multimodal research, I think we should also give the authors some credit because this is still a very new area. Papers published in 2024 were likely started around 2021–2022, and at that time we did not yet have strong visual language models or many reliable tools for analyzing images and videos at scale. The capabilities we see now in 2025 were simply not available when the study was conducted. So I agree that visual identity cues are important on platforms like TikTok, but methodologically it was much harder to capture those cues when the study was designed.

For your second question about Face++ and “fake smiles,” I think this raises a slightly different issue. From a measurement perspective, the model is detecting whether a face is smiling or not. That is an observable feature. Whether the smile is genuine, strategic, or performative is a separate interpretive question. In other words, the system measures the presence of a smile, while the interpretation of that smile as strategic self-presentation belongs to a different level of analysis. These two ideas do not necessarily contradict each other, they simply address different questions.

## 1.11. Namuun Tsegmid
Mar 4 9:06pm
| Last reply Mar 6 2:07am

Reply from Namuun Tsegmid
Kim et al. (2024) analyze how emotions and identity cues appear across different modalities in TikTok videos. When we study multimodal content, is there an assumption that the modalities within a single message align with each other, and what happens if they do not? How do we address degree of consistency or inconsistency across modalities in a same content in a research study?

Dietrich et al. (2019) measure emotional intensity using vocal pitch extracted from congressional speech with automated audio analysis tools. Are the voice-based classifiers or packages used in this approach primarily developed for English speech, and how might linguistic or cultural differences across languages affect how vocal pitch signals emotion?

### 1.11.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 2:07am

Reply from Alvin Zhou
This is a really good question. Most multimodal studies right now separate video into different components: images (per frame, or simply thumbnails), transcripts (text), and audio, and analyze them separately. But this is actually not how people experience videos. When we watch a video, those elements interact with each other. So treating them as completely separate modalities is somewhat artificial.

I recently had a conversation with some colleagues about this, and there is a book chapter coming out (probably in 2026 or 2027) arguing that multimodal analysis should move beyond analyzing image, audio, and text separately and instead treat them as a holistic data environment. So this area is evolving very quickly. The way Kim et al. do it reflects the current methodological stage, but future research will likely move toward more integrated approaches. I really like your question because it shows you are thinking about the limitations of the current methods.

For your second question, I am actually not completely sure. My guess is that many of these voice-based emotion detection tools were originally developed and trained using English speech. If that is the case, they may not generalize well to other languages. Different languages have different pitch patterns, for example, tonal languages like Chinese use pitch to distinguish word meanings, so the same pitch variation might not signal emotion in the same way. So there could definitely be cultural and linguistic bias in these models. Also, the methods used in that paper are not really state-of-the-art anymore; I mainly included that reading to show an early example of how audio data could be analyzed.

## 1.12. Wenwen Cao
Mar 4 10:58pm
| Last reply Mar 6 3:35am

Reply from Wenwen Cao
Kim et al. (2024) include emotions from thumbnails, captions, and transcripts as separate predictors in the regression models. However, I am wondering how we should interpret cases where emotional cues across modalities are inconsistent within the same video. For example, a thumbnail might display anger while the transcript contains fear-related language. Since the study treats these emotions as independent predictors rather than examining cross-modal alignment, it remains unclear whether emotional congruence or inconsistency across modalities affects engagement differently.

Lu et al. (2025) rely on the ViSiL framework to measure similarity between videos based primarily on visual information extracted from frames. This approach is well suited to identifying reused visual footage across videos. However, I am curious how the method performs in situations where the similarity between videos lies primarily in other modalities, such as narration, background music, subtitles, or script structure. For example, two videos may convey nearly identical propaganda messages while using different visual footage or editing styles. In such cases, the visual similarity score might be relatively low even though the underlying message is highly similar. This raises a broader question about how multimodal political communication should be measured computationally. Would incorporating audio or textual similarity measures alongside visual similarity potentially change the observed patterns of information flow between central and local accounts?

### 1.12.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 3:35am

Reply from Alvin Zhou
For your first question, this is a very good point. In the Kim et al. paper, the authors treat emotions in thumbnails, captions, and transcripts as separate predictors because their goal is to examine how different modalities influence engagement differently. If emotional signals across modalities are inconsistent, for example, anger in the thumbnail but fear in the transcript, that could potentially matter. But testing that would require a different research design. For example, you could calculate a measure of emotional inconsistency across modalities and test whether that predicts engagement. That would be an interesting follow-up study. My personal intuition, though, is that such inconsistencies probably do not drive engagement as strongly as the overall presence of emotional cues, but that would need to be tested empirically.

For your second question, I think this is also a very thoughtful critique. The authors’ argument is specifically about central government accounts copying or reusing content from local accounts. Because of that, measuring visual similarity between videos is a relatively strong signal of copying. If two videos share highly similar visual frames, it is much more likely that one video directly reused the other.

In contrast, similarities in narration, background music, subtitles, or script structure might be less reliable signals of copying. For example, on short-video platforms it is very common for many creators to use the same background music or similar subtitles simply because those elements become popular trends. In that case, similarity would not necessarily indicate direct copying between accounts.

That said, your suggestion is still interesting. If in the future propaganda videos start reusing narrative structures or scripts without copying the visual footage, then researchers might need to combine visual similarity with textual or audio similarity measures, for example using embeddings or other multimodal techniques, to detect those patterns (think about last week's reading that measures how fast / the volume of how storyline moves, etc. You can incorporate these two studies).

## 1.13. Jiakun Liang
Mar 4 11:39pm
| Last edited Mar 4 11:40pm
| Last reply Mar 6 2:57am
View History

Reply from Jiakun Liang
1. Lu et al. (2025): The study relies on human coding for topic classification of these videos. Even though they only coded a random sample of 18,571 videos, I think it was still a large sample size, which required substantial time and effort from the human coders. Given the scale of the dataset, I want to ask why they did not use automated classification techniques similar to topic modelling used in textual analysis? What are the trade-offs between human coding and automated classification in this context? Additionally, regarding the platform selection, I think Douyin is highly entertainment-oriented, in which algorithmic recommendation systems tend to prioritize entertaining and emotionally engaging content. In contrast, Sina Weibo functions more as a public discussion platform where political news and public affairs are more widely disseminated. So, could the platform differences influence the pattern of information flow and type of cotent?

2. Qian et al. (2024): I think automated image analysis is a very innovative approach to analyzing large-scale visual cues on social media, such as visual themes from massive data and aesthetic features such as color composition, complexity, and the presence of faces, which are dificult to quantify manually. However, in this article, the authors measured some very implicit visual features, such as brightness, colorfulness, and compositional complexity, which are very difficult to capture or cross-validate. So, I want to ask how the accuracy or validity of these features is evaluated. Doe the computational measures actually reflect how humans perceive these features?

### 1.13.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 2:57am

Reply from Alvin Zhou
For your first question, I do think different platforms may produce different patterns of information flow. In principle, the authors could try to replicate a similar analysis using text data from Sina Weibo. However, identifying similarity in text is often less clean than in video. Two texts might look similar simply because people are discussing the same topic, for example, if everyone is talking about the Olympics, many posts will naturally contain similar words or phrases. Or think of the Olympics, when the media talks about the Olympics, everybody talks about the Olympics.

With videos, however, high similarity is harder to occur by chance. If two videos are visually very similar, it is more likely that one video directly reused or copied the other. Because of that, video similarity can sometimes provide stronger evidence of content diffusion/citation/reuse. If someone wanted to study Weibo instead, it would likely require a different methodological approach and might lead to somewhat different conclusions.

For your second question, many of the features used in the Qian et al. paper, such as brightness, colorfulness, and compositional complexity, are considered relatively low-level visual features. These are actually easier to measure computationally using packages and have been validated in many studies comparing algorithmic measurements with human perception.

In contrast, higher-level constructs, such as whether an image conveys happiness or sadness, are usually more difficult to measure reliably. Those kinds of interpretations often require additional validation. Recently, vision–language models have become quite good at identifying some of these mid-level semantic features (for example, detecting whether people in an image appear happy or sad). Interestingly, these models are often better at those semantic interpretations than at measuring very precise low-level visual properties.

## 1.14. Quin Mudry Nelson (she/they)
Mar 5 9:57am
| Last reply Mar 6 2:25am

Reply from Quin Mudry Nelson
Qian et al. : I was interested in when the authors collected their data from Instagram and Twitter (I don't think they actually say or provide a range of dates). It might help explain the amount of data visualization on Twitter compared to Instagram at the time. Instagram has always been "the photo app" and started as a photography focused social media (thus the camera logo) so the amount of nature photos and high edge density make sense. But the data visualization difference was pretty striking to me since I come across quite a bit of activist and academic data visualization on my Instagram now. I haven't been on Twitter for years and years now, but I would assume the transition to X that pushed many activists and academics off of the platform in recent years. The study was published in 2024, so I would assume the data was collected in the years leading up to then as we've seen people "flee" from Twitter due to the algorithmic changes there.

Peng 2024: This article and the Qian et al. use the same facial recognition API (Face++) and I was curious how it's possible to computationally determine facial expression tone or emotion as simply positive or negative. I think in the Peng article this wouldn't be as salient because you typically aren't dealing with extreme emotional expression with politicians, but how would the computer analyze overjoyous crying with immensely sad crying? I'm unsure how reliable it is to assess facial expressions when people's range of expression differ greatly and multiple emotions can be expressed similarly.

### 1.14.1. Alvin Zhou (he/him)
AuthorTeacher
Mar 6 2:25am

Reply from Alvin Zhou
Your observation about platform differences is interesting. I recently heard about a paper using visual language models to analyze how scientists use data visualizations when communicating with the public. It is not exactly related to your point, but it shows how visual models can now be used to study data visualization itself as a form of communication.

For your second question, this is exactly why I emphasized “validate, validate, validate” in class. I always feel that facial-recognition packages like Face++ can be very hit-or-miss. For example, it is not entirely clear how accurately a model can infer attributes such as age, race, or gender from faces. Emotion detection has similar challenges. Because of that, a good practice is to take a random sample from the dataset, have humans label those images, and then compare the human labels with the model’s predictions. This kind of validation check helps us see whether the automated coding aligns reasonably well with human interpretation.

Regarding your example (overjoyed crying versus extremely sad crying), that is a good conceptual concern. But in large datasets, these kinds of ambiguous edge cases are usually relatively rare. Even if the model misclassifies some of these extreme cases, it often does not substantially change the overall patterns in the data. The more important issue is whether the model performs reasonably well on the majority of cases.