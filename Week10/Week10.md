# 1. Discussion Topic: [Week 10] Readings[Week 10] Readings

Find the readings for the week at: https://z.umn.edu/J8500_Syllabus

The course is organized as a seminar, which means all students are expected to attend all classes, have read and thought about all readings prior to each class, and participate actively and productively in class discussion.

In general, before class, you should have carefully thought about: (1) how the computational methods used in each study helped address the specific research questions of interest to the authors, (2) in what sense these computational methods could extend conventional methods, (3) what are their major assumptions and limitations, and (4) what new arenas for future research these computational methods could open.

To facilitate discussion, each week, all students will submit (to the whole class and me) at least TWO thoughtful questions or comments of interest to you emerging from the week's readings. These discussion questions/comments should be posted to the "Discussions" section on Canvas (named "[Week X] Readings") at least 24 hours before the scheduled class meeting. You are also encouraged to read other students' questions/comments and reply to them. Regardless of whether you are the Reading Lead for a certain week's readings, you should still post to participate in the discussion.

Canvas Discussion & In-Class Participation will be evaluated based on: (1) the depth and quality of your contributions to the Canvas Discussion, and (2) the engagement and quality of your participation in class.

## 1.1. Isabel Garlough-Shah
Mar 26 9:37pm
| Last reply Apr 5 3:15pm

Reply from Isabel Garlough-Shah
I found the methods and findings within the Bailey et al. (2020) and Mukerjee et al. (2018) pieces really fascinating. From a methodological standpoint, comparing self-reported personality scores with computer-predicted personality, all spanning from the Big Five personality model, was incredibly innovative and brought up fascinating results in the form of distance. Furthermore, using network analysis on two different political data sets to map how audiences actually navigate news was equally inventive and provided insightful findings around magnitude in overlap of news diet and consumption. 

As it relates to the visuals represented, for Bailey et al. (2020) Figure 1 I personally had a difficult time understanding what this visualization was trying to convey upon first glance. From both the figure and the reading itself it is difficult to understand initially if Figure 1 is conveying the robustness of the quantified authenticity measure or how quantified authenticity predicts life satisfaction. However, the description of the figure clarifies this. A question with this study and visuals generally, how clear should the narrative of a visualization be without the assistance of a figure description? Would it have been beneficial to distill findings in Study 1 into multiple graphs, like placing Facebook Status and Facebook likes into separate graphs?  

Continuing with the Mukerjee et al. (2018) piece the visualizations within this study had a clearer narrative and were supportive in the overall understanding of findings. In Figure 6 it was fascinating to see how condensed the news network was in the U.S. compared to the U.K. and how digital born media still emerged in a mainly legacy news setting. One question I have concerns an image above the U.S network graph. This image looks similar to the “hairball” graph we discussed in a previous lecture. I am wondering if this additional graph is meant to represent how condensed the U.S. news network is? Does it represent something else? Is this the  “hairball” graph we should avoid?

### 1.1.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 3:15pm

Reply from Alvin Zhou
Your first question is a good one. I think the need for Figure 1 stems from the fact that this is an association-based paper. They are regressing one variable on another without strong causal identification. So a common concern with this kind of observational work is that results may depend on model specifications: what controls you include, how variables are operationalized, and which data source you use.

Figure 1 essentially addresses that concern. It puts many different model specifications in one place to show that the results are consistent. That’s why you see so many estimates together. It’s basically a "our findings are robust!" visualization. Is it harder to read at first glance? Yes. But it is also quite efficient in showing that the main finding holds across different choices.

What you suggested—splitting the figure into multiple panels (e.g., Facebook likes vs. Facebook status)—is totally reasonable. In fact, that would likely make it easier to read. But if you look closely, those subsets of estimates (red, Facebook likes vs. blue, Facebook status) follow very similar patterns. So I think the authors’ logic is that, instead of repeating essentially the same figure twice, they combine everything into a single figure. That makes it more compact, but also a bit more cognitively demanding.

For your second question about the Mukerjee et al. (2018) figure, the small graph above the U.S. network is essentially what we would call a “hairball”: a very dense, unfiltered network. I don’t think it is doing a lot analytically. It’s not necessary for the argument. But it does serve a purpose: it gives you a sense of how dense and cluttered the full network looks before applying weighting or filtering. So yes, beyond that, it does not add much substantive interpretation.

More broadly, however, I want to emphasize this kind of "inset figure" is quite common and often used to provide context---showing the full network while the main panel focuses on the more interpretable, filtered structure; similarly, you can visualize the population of something and use it as an insert, while the main figure visualizes whatever you want to emphasize/communicate.

## 1.2. Qiling Wu (she/her)
Mar 27 12:54pm
| Last edited Mar 27 12:54pm
| Last reply Apr 5 5:29pm
View History

Reply from Qiling Wu
Mukerjee et al., 2018 

One thing I found especially compelling in this paper is the visualization of Figure 6. The authors make a series of deliberate design choices, such as scaling label size by reach, encoding tie strength through edge thickness, that make the underlying hierarchy immediately clear and simple. What stands out to me is that this visualization is not just aesthetically pleasing; it reflects a strong reader‑centered awareness. Instead of overwhelming the audience with the full network like some of the research would do, the figure highlights the structural relationships that matter most. It’s a good reminder that effective visualization is not about showing everything. Also they used a lot of comparisions in their visulaization, like why filtered, why weighted, why log transformed, etc. 

Bailey et al., 2020

I have learned a lot from this article, cause it's more aligned with my usual way of reporting data, like regressions and experiments design. Their figure of presenting coefficients are amazing, which is way more clear and interesting than to looks at the table yourself. Also, I have learned from their figure 2, the diagram showing their complex experimental design. Even though some guidelines say to use tables when possible, that applies to results, not designs. For a multi‑stage experiment like this, a schematic figure is actually the most reader‑friendly choice.

But I do have one question for this: when are we encouraged to use visualizations in our paper? To my understanding. I think it's more recommended to use tables for results as some journals (especially APA‑style) say: If information can be expressed in a table, don’t turn it into a figure, if I recalled correctly...

### 1.2.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 5:29pm

Reply from Alvin Zhou
I’m glad you found this week’s readings inspiring. On your point about APA style, I wouldn’t treat that as a strict rule anymore. The idea that “if it can be a table, don’t make it a figure” reflects a more traditional approach, but in practice, many journals—especially more modern or interdisciplinary ones—are much more open to visualizations.

In fact, when results become complex, figures are often preferred because tables can be very difficult to parse. For example, Figure 2 in Bailey et al. (2020) is a good case where a diagram is clearly the better choice—you really couldn’t communicate that design effectively with a table. Similarly, in Figure 1, which presents 16 model specifications, a visualization makes the comparison much easier. If anything, the 16 tables would be pushed to the appendix for completeness, while the figure does the main communicative work.

So in practice, there are two broad styles. A more traditional approach (still common in some journals like JMCQ or Communication Monographs right now, though it can change once the editorial team changes) tends to rely more on tables. A more computational or contemporary approach (more common in journals such as JoC, JCMC, NMS, or Health Communication, if I remember correctly) tends to prioritize visualizations, especially when communicating with broader audiences.

So the short answer is: use figures when they make patterns easier to see, especially for complex models or designs. Use tables when the exact numbers are the main point. And in most cases, you’ll end up using both—figures in the main text for interpretation, and tables in the appendix for full reporting.

## 1.3. Carolina Aguiar Da Silva
Mar 28 2:45pm
| Last edited Mar 28 2:45pm
| Last reply Apr 5 2:18pm
View History

Reply from Carolina Aguiar Da Silva
Wu et al., 2019

I found the visualizations in Wu et al. (2019) really helpful, but also a bit confusing at first. In Figure 2, I could see that disruption goes down and citations go up as team size increases, but it took me a moment to fully understand what that actually meant in practice. The pattern looks very clear, but I was not sure how to interpret it beyond just “bigger teams and less disruption".

I also felt that the graph looks very smooth, which made me wonder if it is hiding some variation. For example, I am not sure if there are cases where large teams are still very disruptive or small teams are not, because the figure only shows the overall trend. So, how much are we missing by only looking at averages?

In Figure 4, I thought the idea was interesting, especially that small teams use older references and large teams use more recent ones. But I was still trying to understand how strong this explanation is. Is this explaining why small teams are more disruptive, or is it just something that happens at the same time?

### 1.3.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 2:18pm

Reply from Alvin Zhou
For Figure 2, I agree that it is a bit harder to interpret than it might have been — I think panels D, E, and F were likely added later in response to reviewers' questions about top performers, while panels A–C carry the main message. In that sense, the visualization is quite straightforward: the green line represents disruption (left y-axis), and the pink line represents citations (right y-axis). The core takeaway is exactly what you said, "larger teams are associated with less disruption," and no more "other things" to interpret.

For your second point about variation, I think the grey shaded areas already reflect that to some extent. These are bootstrapped 95% confidence intervals, so they capture uncertainty around the averages. That said, the figure still summarizes a very large amount of data into averages, so it smooths over a lot of underlying variation. There are likely cases where large teams are disruptive and small teams are not. But across millions of observations, those cases become less visible, and what remains is the overall trend. So yes, we are missing some variation, but that is also consistent with the goal of this kind of “science of science” analysis, which is to identify broad patterns rather than individual exceptions.

For Figure 4, I do not think it is meant to explain why small teams are more disruptive. The authors frame it more as a descriptive difference in how teams search prior work --- they wrote: "The considerable difference in disruption between large and small teams raises questions regarding how these teams differ in searching the past to formulate their next paper, patent, or product." This suggests a possible mechanism, but it is not presented as a causal explanation. It is better understood as another pattern in the data that is consistent with the disruption difference, rather than something that fully explains it.

## 1.4. Kaiyi Yu
Mar 30 8:05pm
| Last reply Apr 5 5:40pm

Reply from Kaiyi Yu
What I like particularly about Mukerjee et al. 's (2018) study is that their narrative about findings really corresponds to the figures they presented in the paper. While some other studies will just put a label, such as (Figure 1) at the end and do not demonstrate what the figure indicates, they really did a good job explaining their findings and how they present the figure by saying things like “what the figure shows is that…” This is really helpful to me because their study appears to use an advanced method, and It is quite complicated and abstract to imagine what it could mean for the final results to eliminate insignificant ties and use weighted eigenvector scores. But their figures and their explanation of what the figures indicate really explain how the results change.  I think Figure 6, showing the network figure, is also clear and helpful. The authors use the thickness of ties to represent the overlap level or media share, as well as the size of the node labels to represent the total audience reach of each media channel. They also included the scale of media reach, which I think is very informative. This figure makes me think of the visualization in last week’s reading by Chen et al. (2020). In Chen et al.’s (2020) study, they only included the table of regression analysis results in their paper. However, the network visualizations and figures showing hypotheses are included in the supplementary materials, which I personally feel is better for interpretation and storytelling (showing why their findings are important).

It seems that figures and tables showing all coefficients have different purposes. How should we decide whether to include them in the main paper, in the appendix, or in supplementary materials?

Bailey et al. 's (2020) study gives me a similar feeling. The bar charts and error bars are very suitable for group comparison and t-test results. Table 1, containing all the regression results and coefficients, seems already comprehensive enough for Study 1. From my perspective, Figure 1 doesn’t appear to effectively enhance visualization. It seems to show the results of different measures of quantified authenticity, such as the calculated Manhattan distance. If it is for a robustness test, is it better to include this figure in the supplementary materials?

### 1.4.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 5:40pm

Reply from Alvin Zhou
I think what you’re noticing here really comes down to different “training traditions” in how people communicate results. The Chen et al. paper reflects a more traditional approach—tables, regression outputs, and text doing most of the work. Mukerjee et al. is much more in line with a computational or more modern style, where figures carry a lot of the argument and help guide interpretation. I don’t think either approach is inherently right or wrong, but they do reflect different norms.

When deciding where things go (main text vs. appendix), my rule of thumb is based on complexity and communicative value. If a table is very simple, then it’s fine to keep it in the main text. But once a table gets too large—say more than ~10 rows or 5 columns—it becomes hard to read, and at that point a figure usually does a better job. Another consideration is whether a visualization actually simplifies the message. Sometimes, even a relatively simple table can be replaced with a figure that makes the pattern immediately clear, improving the overall readability of the paper (and kind of a "flex" in front of reviewers that "I can do great visuals and I am in command of the data and I know what I am doing"). In those cases, I would put the figure in the main text and move the full table to the appendix.

Once you get used to communicating through visualizations, it’s actually quite hard to go back to relying on tables alone, because tables require readers to do more work to extract the pattern.

For Bailey et al. (2020), I would actually take a slightly different stance than you. I think Figure 1 should stay in the main text, and Table 1 could be moved to the appendix. The core claim they want to make is that there is a consistent positive association across many specifications, and Figure 1 conveys this clearly by showing all 16 models at once. The table, while comprehensive, doesn’t add much beyond the exact numbers.

So overall, I wouldn’t frame it as a strict rule about figures vs. tables. It’s more about which format best communicates the key takeaway, and then using the appendix to provide full transparency for readers who want the details.

## 1.5. Anastasia Micich
Mar 31 7:06am
| Last reply Apr 5 4:01pm

Reply from Anastasia Micich
Mukerjee et al. 2018 

1. The authors argue that methodological choices are never arbitrary or neutral. How should computational methods scholars in communication develop shared standards for network construction in audience research, and who should set them? Is this a good idea or limiting to research? 

2. comScore and similar datasets are widely used in computational communication research, but carry substantial measurement uncertainty, which Taneja and Webster took issue with. How should researchers communicate these limitations to audiences who treat large datasets as inherently unreliable? 

### 1.5.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 4:01pm

Reply from Alvin Zhou
For your first question, I think the authors are not trying to prescribe a universal standard for network construction. Their goal is to show that filtering matters, and that different techniques can produce very different network structures and interpretations.

In fact, they themselves have published other work comparing different filtering approaches. So the takeaway is not that “phi is the correct way,” but that we need to use filtering, and phi is just one possible method among many. For example, they use backbone extraction in another paper (https://doi.org/10.1080/10584609.2018.1546244), and they also compare different techniques in another paper (https://doi.org/10.1016/j.socnet.2021.10.002). So I don’t think they are trying to set a standard at all—if anything, they are showing that the choice of method is still open and should be justified. And I would be cautious about pushing for strict standards, because that could actually limit research rather than improve it.

For your second question, I think a lot of computational scholars’ reaction is simply: "this is the best we’ve got" (until we got the Meta 2020 study we will discuss in the coming weeks). Datasets like comScore or Nielsen are not perfect, but they are among the only large-scale behavioral datasets available. Internally, scholars often compare across different providers, and most of the time, those datasets show very similar patterns, so we tend to treat them as reasonably reliable.

At the same time, the uncertainty is usually just communicated in the limitations section. Researchers will explicitly note that the data are provided by third-party companies and that validity issues are not fully within their control. I’ve used comScore data myself, and that’s exactly how we handle it: we acknowledge the limitation, but still proceed because there is no better alternative.

## 1.6. Jessica Tuleassi
Mar 31 11:53pm
| Last reply Apr 5 5:17pm

Reply from Jessica Tuleassi
Bailey et al

I found this article particularly interesting due to its practicality and methodological rigor. I was especially intrigued by the authors’ introduction of the term “quantified authenticity.” The figures were generally well presented; although Figure 1 was initially difficult to interpret, I was able to understand it after reviewing the accompanying explanation. I was wondering if the distance metrics (m, e) and similarity metrics (r, c) behave differently; is one theoretically more appropriate? In Figure 1, the result for one of the 16 measures (correlation similarity) was labeled as not significant. However, the bar shows it as significant and positive. Could this be an oversight? 

 

Wu et al

The authors use a series of complex visualizations to support their claim that small teams "disrupt" science while large teams "develop" it; given the organic metaphor of the "citation trees" in Extended Data Figure 1, how effectively do these visual elements translate abstract citation metrics into intuitive insights, and what are the potential strengths or weaknesses of using dual-axis plots (such as in Figures 2 and 4) to represent the diverging relationship between team size, disruption, and impact?

 

### 1.6.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 5:17pm

Reply from Alvin Zhou
That’s a really good question. I think the reason the authors used all four measures (distance: m, e; similarity: r, c) is precisely that there isn’t one that is clearly theoretically superior. In much computational work, especially when operationalizing an abstract concept like “authenticity,” reviewers will question whether a specific proxy truly captures the construct. One common response is to use multiple reasonable operationalizations and show that the results are consistent across them. That’s exactly what Figure 1 is doing: it’s essentially a robustness check across many specifications.

For your point about the correlation similarity measure being labeled as not significant while the bar appears positive, that’s a sharp observation. This likely has to do with how confidence intervals are being interpreted visually versus statistically. A coefficient can appear positive in the plot yet still not be statistically distinguishable from zero, depending on the interval. I would suggest looking at this explanation: https://vsni.co.uk/confidence-tricks-the-83-4-confidence-interval-for-comparing-means/ It helps clarify why visual overlap and statistical significance don’t always align in an intuitive way (if you want CI to correspond to the p<.05, you would actually use 83.4% CI, instead of 95% CI; I will send an announcement about it soon).

For Wu et al. (2019), I actually think Extended Data Figure 1 is one of the more memorable visualizations: it’s very stylized, and they likely had design support for it. I wouldn’t treat that as a standard to replicate, but it’s useful to see what’s possible.

Regarding the dual-axis plots in Figures 2 and 4, what you’re noticing is exactly why they are used. When you want to show two variables with different scales (here, disruption and citations) in the same panel, dual axes become a practical solution. The strength is that it makes the contrasting trends immediately visible (i.e., disruption declines while citations increase with team size). The trade-off is that it can give a false impression that the magnitudes are directly comparable, which they are not. So it’s a slightly more complex design, but it’s quite common and useful when the goal is to highlight opposing trends within the same context.

## 1.7. Jikai Sun (he/him)
Apr 1 2:52pm
| Last reply Apr 5 4:20pm

Reply from Jikai Sun
I am interested in the way Bailey et al. (2020) utilized to quantify authenticity. As described in their paper, they asked participants to self-report personality traits, and also compare these self-ratings with two observational sources, including Facebook Likes and Facebook status updates. I’m not quite clear how authenticity could be calculated through such comparisons.

Shi et al. (2017) investigates the co-purchases between political books and science books. I am very interested in how recommendation algorithms may work in the process of leading to co-purchases of books online. In this paper, the authors mainly describe the phenomenon that different partisanships have different book consumption preferences. It would be more interesting to further investigate causal inference, and investigate other relevant factors which may amplify or reduce such preference differences.

### 1.7.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 4:20pm

Reply from Alvin Zhou
For your first question, I think the key is that Bailey et al. (2020) are not directly “measuring authenticity” from scratch, but building on prior work that predicts personality from digital traces like Facebook Likes and status updates. Specifically, they rely on three studies, as they cited:

33. Youyou, W., Kosinski, M. & Stillwell, D. Computers judge personalities better than humans. Proc. Natl Acad. Sci. USA 112, 1036–1040 (2015).

34. Park, G. et al. Automatic personality assessment through social media language. J. Pers. Soc. Psychol. 108, 934 (2015).

35. Kosinski, M., Stillwell, D. & Graepel, T. Private traits and attributes are predictable from digital records of human behavior. Proc. Natl Acad. Sci. USA 110, 5802–5805 (2013).

The idea is that you have (1) self-reported personality and (2) personality predicted from observable behavior (Likes or language). Authenticity is then operationalized as the distance between these two profiles. So if your observed behavior closely matches your self-reported traits, you are considered more “authentic”; if there is a larger gap, you are less authentic. So it’s really a comparison-based measure rather than a direct one.

For your second point, I think what you’re suggesting is basically a different research project. Shi et al. (2017) is primarily descriptive, showing how co-purchase networks reflect partisan preferences. Moving into causal explanations would require a very different design, such as experiments or platform-level data.

Also, just to reiterate, for this class the main focus is on how these results are visualized rather than extending the substantive research questions of the papers.

## 1.8. Namuun Tsegmid
Apr 1 5:31pm
| Last edited Apr 1 5:31pm
| Last reply Apr 5 5:05pm
View History

Reply from Namuun Tsegmid
Bailey et al. (2020). Fig. 3 was interesting to me because the main takeaway is actually a within-subject effect, but the visualization seems to emphasize between-group differences. At Time 1, there is no clear difference between conditions, yet the figure presents separate panels (Group A vs. Group B), which makes it harder to immediately see the crossover pattern that happens at Time 2.

It feels like the key insight that well-being is higher during the authentic week compared to the idealized week within the same person could have been shown more clearly.

I wonder if a line plot or other visualization choice would have made the interaction more intuitive, especially since the causal claim relies on within-person comparisons rather than group differences.

Shi et al. (2017). I found that Fig. 2 was challenging for me to interpret for the following reasons. The purple shades that represent the alignment look very similar, so it is hard to distinguish what each element represents. Personally, I think it is sort of not straightforward to understand the colors and left & right panels even after reading the caption.

I understand that empirical visualizations are stronger and more insightful than intuitive ones. However, they can still be complex (and dependent on the reader’s knowledge) to interpret, even with a caption. At what extent, researchers balance between simplicity and complexity when presenting their findings in figures?

### 1.8.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 5:05pm

Reply from Alvin Zhou
I would push back a bit on your characterization of Figure 3 in Bailey et al. (2020). I actually think the figure is doing a good job of highlighting the within-subject effect. For example, when I look at the top-left panel (mood, Group A), the first thing I notice is that at Time 2, the post-idealized condition is clearly lower than the authentic condition. That is exactly the within-person contrast they are trying to show.

I do agree with part of your point, though. The comparison between Group A and Group B at Time 1—which they note in the text shows no significant difference—is not readily apparent in the figure. So if anything, what’s less clear is the between-group baseline comparison, not the within-subject effect. The main takeaway (i.e., higher well-being during the authentic week compared to the idealized week within the same person) is actually quite clearly shown by the side-by-side bars for Time 1 and Time 2.

For Shi et al. (2017), I agree that Figure 2 is not very clear. The main issue is the color scale. Most of the disciplines fall around the midpoint (around 0.5), so they all appear as very similar shades of purple. This is a common problem with gradient visualizations: when most values cluster in the middle, you lose visual differentiation.

A better approach would be to use a diverging scale with a clearer midpoint (for example, blue → white → red) so that values near the center are visually distinct from those at the extremes. Another issue is that this figure is illustrative rather than comprehensive; they are selecting specific examples. So in principle, they could have chosen cases with a stronger contrast to make the pattern clearer, although it’s possible these were the most representative ones they had.

For your last question, I would actually push back on the idea that empirical visualizations are inherently better than intuitive ones. I would prefer intuitive visualizations in most cases. The purpose of a figure is to communicate the argument clearly, while the actual empirical rigor sits in the statistical models and the text. For example, in Wu et al. (2019), Figure 2 uses different y-axis scales and does not start at zero, which could be considered misleading, but people still appreciate it because it is very easy to understand.

So in practice, it’s about balancing clarity and accuracy. If a visualization communicates the core pattern clearly and the underlying analysis is sound, some level of simplification is generally acceptable.

## 1.9. Ruiheng (Rachel) Sun (she/her)
Apr 1 6:07pm
| Last reply Apr 5 4:52pm

Reply from Ruiheng (Rachel) Sun
I think this week’s reading brings attention to visualization, which is something I had previously underestimated.

The guideline from Schwabish (2014) shows many useful examples, and many of this week’s articles seem to follow these principles. For example, Bailey et al. (2020) and Wu et al. (2019) distinguish between groups using simple visual cues like color or shape. I especially find the Figure 3a from Shi et al. (2017) really creative in using gradient colors with numbers to include both accuracy and readability. One concern for Mukerjee et al. (2018) is that they seem to use too many colors that don’t have a consistency, especially in their Figure 3.

In addition, Schwabish (2014) suggests that many graphs show too much data. However, I still feel that decisions about visualization can be somewhat subjective and influenced by personal aesthetic opinions. For instance, how do we determine what information to omit without unintentionally misleading the reader?

I have another question: how should we effectively integrate text and visualizations? Given that figures already carry explanatory power, what are some best practices for referring to or describing them within paragraphs? For instance, should we show the graph before we mention it in the text? Also, how much content we could leave out if it is already in the graphs?

### 1.9.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 4:52pm

Reply from Alvin Zhou
Yes, I agree that Figure 3 in Shi et al. (2017) is a really strong example. It manages to preserve numerical accuracy while remaining visually intuitive and readable, which is quite difficult to achieve.

For your comment on Mukerjee et al. (2018) Figure 3, I think that’s a valid critique. They are using quite a few different colors without a very consistent mapping. I can kind of see the logic (since the upper panel shows the number of edges and the lower panel shows centralization, they might want to visually separate them), but I still think it could be improved. A cleaner approach would be to use a single color family per concept, then use saturation or transparency to distinguish filtered from unfiltered. For example, edges could all be in blue, with unfiltered as more saturated and filtered as lighter, and centralization could all be in purple, again using saturation to differentiate conditions. That would keep the visual mapping more consistent.

For your second question about how to decide what to omit, I do think there is some subjectivity, but the field is moving toward a more pragmatic standard. As long as the underlying analysis is robust and fully reported (e.g., in the appendix), visualization is treated as a communication tool rather than the core evidence itself. So even if a figure simplifies or slightly compresses variation, it is generally acceptable if it accurately conveys the main pattern. For example, in Wu et al. (2019), some students noted that Figure 2 uses different y-axis scales and does not start at zero, which could be considered misleading. But because the statistical results are solid and transparent elsewhere, this kind of choice is usually tolerated.

For your last question about integrating text and figures, I usually introduce the figure first and then describe it. For example, I might write: “Figure 1 visualizes how A relates to B across datasets.” Then in the text, I provide the precise results—effect size, standard error, p-value—and point readers to specific panels (e.g., “see Panel A”). The caption, on the other hand, should not repeat detailed statistics. Instead, it should clearly state the main takeaway so that the figure can stand on its own without requiring the reader to go back to the main text.

## 1.10. Quin Mudry Nelson (she/they)
Apr 1 7:08pm
| Last reply Apr 5 4:14pm

Reply from Quin Mudry Nelson
I am the lead for Richardson et al. (2025) this week, which was a very interesting paper that touches on ethical concerns and the ultimate goals of scientific research being out of line with the incentives put in place for academics in their careers (re: publish or perish). While the findings described in words are important and highly relevant, I think the visualizations for that paper are almost doing *too much*. I love visualizations, but sometimes it's easier to describe the patterns of the data rather than cram a bunch of small figures together that then lack the detail to tell the full story. Especially with network maps that have tons of smaller nodes I want to look at! I think different kinds of figures benefit from faceting (lines, bar plots, point data with best fit lines) and other types faceting can actually be a detriment to the visualization because it ultimately takes up more plot space for not much extra detail. When your visualizations take up both tons of space, AND require 1/4th of the page of footnotes to describe them, I think we've "lost the plot". That said, I also think the journal's criteria for figures really matters when deciding on where to submit, and Richardson et al. seemed to need a lot of figures, but were limited by space to only four combined images. How should visualizations be factored into journal selection when manuscript drafting? Is there a typical/average number of visualizations allowed per journal?

The Mukerjee et al. 2018 paper has generally cleaner visualizations -- I appreciate when authors include conceptual models to explain fundamental relationships to their studies. However, some of their visualizations lack clarity. Their Figure 2 point data would have benefited from transparency applied to their data points rather than shape differences, where the red appears to have more observations and obstructs the full pattern of the blue points. Figures 3 and 4 in this article have issues with inconsistent y-axis scales when drawing comparisons between the UK and US, where the heights of bars are misleading. Figures that are meant to illustrate comparisons should try to maintain the same scale so that it's easy for the reader to come to the correct interpretation. The network map for the US is also confusing to me, why are there so few ties on the main map, but then a map with way too many ties to be interpretable in the upper corner? Replacing the nodes altogether with just the URLs is also a choice that doesn't really contribute to a concise and easy to read visualization.

Do journal reviewers comment much on the efficacy of visualizations and figures? Will reviewers ask the authors to tweak visualizations if they think they can be improved, or is much of the focus of reviewers solely on the written content?

### 1.10.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 4:14pm

Reply from Alvin Zhou
I like your reaction. I also feel like Richardson et al. is doing a bit too much, but that’s kind of how people operate in general-interest journals. The higher you go, especially in STEM-oriented outlets, the expectations for visualization—both in quantity and complexity—tend to increase. In communication journals, it’s usually much lighter. You might see two or three figures at most, and they are rarely as complex as what you see in Richardson.

That said, visualization quality is a very important cue for how people evaluate a paper. If the figures look bad, the first impression is usually not great. A lot of reviewers do react to that, even if they don’t explicitly say it. So having clean, well-designed, moderately complex visualizations helps a lot.

Regarding your point about Figure 2 in Mukerjee et al. (2018), I agree that the transparency could be adjusted (e.g., to ~60%), but I don’t think it would change the interpretation much. The purpose of that figure is just to show a general association between the x and y axes to establish validity. It’s not meant for reading individual data points.

For Figures 3 and 4, I would push back a bit. They are not really trying to compare the UK and the US directly. Instead, they are comparing unfiltered vs. filtered networks within each country. Since the underlying data differ, using the same y-axis across countries is less critical for their argument.

For the network map and the “hairball” insert, I mentioned this to another student as well. The insert is just there to show that the full network is very dense. It doesn’t add much analytically, but it provides context. More importantly, it demonstrates a useful visualization strategy: if you focus on a subset, you can include an inset to show the full population. Even if it’s somewhat redundant, it’s often better to include it than not.

On replacing nodes with URLs, I actually like that choice. If they used circles plus labels (e.g., with ggrepel), it would probably be unreadable given the number of nodes. This is one of those trade-offs where either option could be defensible.

For your last question, it really depends on the reviewer. Personally, I comment on visualizations a lot when I review papers. But many reviewers focus primarily on the text and methods and may not say much about figures unless there’s a clear problem.

## 1.11. Eun Sun Kyoung
Apr 1 7:59pm
| Last reply Apr 5 3:39pm

Reply from Eun Sun Kyoung

Since many journals are primarily viewed online, using color to distinguish elements seems efficient and important. However, considering situations where figures might be printed in black and white, alternative ways of visualization, such as solid versus dashed lines, could be useful. In Wu et al. (2019), I noticed that all lines in Figure 2 are solid, whereas those in Figure 4 are dashed. I was wondering if there is a specific reason for this choice. Also, would it be acceptable to mix line styles within the same figure, for example, using both color and differences like solid versus dashed lines to distinguish elements?

In Shi et al. (2017), Figure 1-b shows that the red books appear more clustered, while the central region contains many overlaps between red and blue books. I am curious about how this pattern should be interpreted. What interpretation might be appropriate for this zone of interaction or crossover between the two groups?

### 1.11.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 3:39pm

Reply from Alvin Zhou
Your first question is a really good one. We actually discussed this in class. There are many accessibility concerns with visualization, and what you suggested—mixing line styles, colors, shapes, and other cues—is generally the better approach.

Even if a figure uses only color, that does not necessarily mean it will fail in black and white. In many cases, different colors will translate into different grayscale values when printed. For example, a more saturated color will appear darker (closer to black), while a less saturated color will appear lighter or grayer. So sometimes the distinction is still visible even without explicitly using dashed versus solid lines.

That said, it is still good practice to check. You can print the figure or convert it to grayscale to see whether the differences are preserved. And beyond black-and-white printing, color blindness is another concern—certain combinations like red and green can be difficult to distinguish, so combining color with line styles or shapes is usually more robust.

For the Wu et al. (2019) figures, I don’t think there is a specific methodological reason for Figure 2 using solid lines and Figure 4 using dashed lines. It is more likely a stylistic choice rather than something with substantive meaning.

For your second question about Shi et al. (2017) (which visualizes co-purchasing behavior without explicitly showing edges), I think the key point is that the figure is not really about showing a “zone of interaction” between red and blue books. The interpretation is that blue-linked science books are more dispersed across the network, whereas red books are more clustered.

The central area where red and blue books appear closer together might suggest that some readers co-purchase across the two groups (maybe because people who are interested in politics are likely to purchase both?), but that is not the main takeaway. The main point is the difference in structure: blue books are more spread out, indicating broader co-purchasing patterns, while red books form tighter clusters.

## 1.12. Wenwen Cao
Apr 1 11:12pm
| Last reply Apr 5 2:41pm

Reply from Wenwen Cao
Bailey et al., (2020)

Looking at Figure 1, I noticed that the visualization emphasizes whether coefficients are positive and statistically significant across different model specifications, which helps convey the overall robustness of the findings. However, there is less emphasis on how much the effect sizes vary across these models, even though the magnitude of the coefficients appears to differ.

This made me think about how regression results are typically visualized: Should visualizations of model results focus more on variation in effect size rather than primarily highlighting direction and significance? Could emphasizing consistency in sign obscure meaningful differences in the strength of the relationship?

Mukerjee et al. (2018)

In Figure 3, the authors show how the structure of the network changes after removing statistically insignificant ties, and the result becomes much more centralized. I found it interesting that a methodological step like filtering can lead to such a noticeable shift in how the network looks and how we might interpret media consumption patterns. The visualization makes this change feel quite intuitive, even though it is driven by specific statistical decisions.

This made me reflect on how methodological choices and visualization interact: Since this structure depends on filtering decisions, I’m wondering how we should interpret it: does this visualization reflect how audiences actually behave, or does it mainly reflect the analytical choices made by the researchers? Also, as researchers, how should we decide on the appropriate filtering criteria?

### 1.12.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 2:41pm

Reply from Alvin Zhou
Regarding your first question, I think there is a bit of a misunderstanding about what “effect size” means in this context. In experimental studies, effect size often refers to something like Cohen’s d. But in association studies like Bailey et al. (2020), where they regress life satisfaction on quantified authenticity, the closest equivalent to an effect size is simply the regression coefficient itself.

That is exactly what Figure 1 is showing. The point estimate (the dot) represents the coefficient, so it already captures the magnitude of the effect (i.e., how far it is from zero). The vertical bar shows the standard error (or confidence interval), and from that, you can also infer statistical significance. So the figure is not only about direction or significance... It is indeed visualizing the effect size through the coefficients. For example, as you noticed, some estimates are very close to zero, while the largest is around 0.12.

More broadly, in this kind of regression-based work, it is standard practice to visualize coefficients rather than metrics such as Cohen’s d. If authors report additional effect size metrics, those are usually included in the text rather than visualized separately, something like: (\beta=.12, se=.03, p<.01; Cohen's d = .32).

For your second question about Mukerjee et al. (2018), this is a really good observation. The key point is that the network you see/analyze/visualize is always partly a product of analytical decisions. And yes, filtering can directly shape what the network looks like and how we interpret it. The authors argue that when you do not account for tie strength (i.e., you treat all overlaps as equal), the network appears overly diffuse and does not align with "how we intuitively think about news consumption" (i.e., face validity). Once you incorporate weighted ties or apply filtering, a more centralized and hierarchical structure emerges. As they note, taking overlap strength into account reveals that the system is “not so massive but rather narrowly concentrated,” with major outlets like BBC or CNN dominating the network (page 40). And I think the goal of the paper is not "using phi is the only correct way to analyze news consumption overlap data," but that "we need to use filtering, and one of the methods we could use is phi, but there are other methods you can use too," for example, they used backbone extraction in another paper (https://doi.org/10.1080/10584609.2018.1546244) and compared different techniques in another paper (https://doi.org/10.1016/j.socnet.2021.10.002).

Regarding how to decide on filtering criteria, there is no single correct answer. The choice should be guided by theory (what kind of relationships you think are meaningful), robustness checks (whether results hold under different thresholds), and interpretability (whether the resulting network aligns with what we know about the real-world system), and more practically, what filtering techniques other papers in this area of research have previously used. In this paper, part of the justification is essentially face validity: the filtered network produces a structure that better matches our understanding of how audiences concentrate around major news sources.

## 1.13. Jiarou Chen (she/her)
Apr 1 11:27pm
| Last reply Apr 5 3:05pm

Reply from Jiarou Chen
(Wu et al., 2019) Figure 1 describes the calculation of D. In this figure, nk represents the situation where only previous articles are cited but this particular article is not cited. But suppose article A represents a disruptive innovation in a mature field. According to D's formula, the D score of article A would still be very low. Would this underestimate the D score of article A?

(Richardson et al., 2025) I really like how this paper provides multi-dimensional evidence about paper mills' behavioral patterns in fig.2, but in terms of interpretation, the authors tend to analyze different dimension separately (e.g., while analyzing fig.2 D, only focusing on year distribution, not comparing other dimensions). I'm wondering if it's possible to correlate multiple dimensions for a more comprehensive interpretation. For example, by adding an image including module - publishers - year distribution (integrating fig.2 D & fig.2 E), we may be able to tell whether there is a pattern of attacking certain publisers during certain period.

I feel that this article seems to be an unconventional literature review. Generally, researchers conducting literature reviews will take into account the issue of publication bias. They will access some research papers that have not been published by certain researchers. This article is also based on the available and reported data of retractions. But I wonder if in this situation, it is possible to obtain withdrawn research data that has not been made public but can still supplement the arguments of the article?

### 1.13.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 3:05pm

Reply from Alvin Zhou
For your first question, I think there is a slight misunderstanding of how the D index works. If Article A is truly a disruptive innovation, even in a mature field, you would expect many future papers to cite it  without citing its predecessors (the “green” citations). At the same time, because it is a mature field, many of those future papers will continue to cite the prior literature, thereby increasing the number of “purple” cases. And, importantly, there will also be many cases where future papers continue to cite only prior work, not Article A at all (the n_k component).

So yes, the presence of a large n_k can pull the D score downward---but should still be a positive D. But that is actually by design. The measure is relative: in a mature field with a large existing literature, it is inherently harder for any single paper to fully redirect attention away from prior work. So a paper can still be innovative and have a positive D score, but not necessarily close to 1. In that sense, the metric captures how much a paper disrupts the structure of its field, not in an absolute sense. But I would also argue that a “truly” disruptive paper would more closely resemble the ideal case where future work cites it without citing its predecessors, but that is simply more difficult to achieve in dense, mature areas.

For your second question, I think your idea makes sense. Combining dimensions, a line chart or layered visualization (e.g., year on the x-axis with separate lines for publishers) could work well for that. That said, each figure in the paper is designed to make a specific point. Figure 2 explicitly shows coordination in the network, so it prioritizes network-level analysis rather than combining multiple dimensions at once (see the figure title "evidence of coordination").

In large-scale projects like this, authors usually generate many different visualizations and then select a subset that most clearly supports their argument. So your suggestion is valid, but it would likely serve as an additional analysis (in appendix, I think).

For your last point, I would not characterize this paper as a literature review. It is an empirical study using observed data on retracted papers. Your concern about selection bias is valid; however, this kind of "science of science" work necessarily focuses on cases that are visible (i.e., published, then detected and retracted), and it misses undetected or unpublished problematic work. However, “withdrawn but not public” doesn't make sense to me... Retractions are, by definition, publicly documented events, and journals will announce such retractions and have clear documentation.

## 1.14. Jiakun Liang
Apr 2 6:23am
| Last reply Apr 5 3:53pm

Reply from Jiakun Liang
1. Bailey et al. (2020): I think the Figure 3 "Experimental outcomes by authenticity and idealization treatment" is useful because it visually shows a pattern that well-being tends to be higher during the authentic posting week than during the idealized posting week. However, as Group A and Group B received the treatments in reverse order, how did the authors assess possible order effects, and could the visualization be redesigned to make those sequence effects more explicit?

2. Wu et al. (2019): In Figures 2 "Small teams disrupt whereas large teams develop. a–c", the authors use dual y-axes to display disruption and citations. While this design makes it easy to compare overall trends within a single panel (articles, patents, or software), it gives me the impression that the magnitude of change in the two variables is directly comparable, even though they are measured on entirely different scales. I am curious about why not plot the lines from different panels in one graph and separate the citations and disruptions into different graphs.

### 1.14.1. Alvin Zhou (he/him)
AuthorTeacher
Apr 5 3:53pm

Reply from Alvin Zhou
I’m not quite understanding your first question. There are potential order effects, and that’s exactly why they visualized Group A and Group B separately. In Group A (the left column), they show the red bar (time 1) first and then the blue bar (time 2). In Group B, they reverse that order—blue first, then red. So the visualization is already encoding the sequence of treatments.

If you are concerned about order effects, that is more of a modeling issue than a visualization issue. They could include group (A vs. B) as a fixed or random effect in the statistical analysis to explicitly account for order. But in terms of visualization, I actually think they did a pretty good job making the sequence visible.

For your second question, that’s a really good one. You are right that the dual y-axis can give the impression that the magnitude of change is directly comparable, even though disruption and citations are on completely different scales. You can also see that the starting points of the y-axes differ across panels (e.g., panel A vs. B vs. C), which can further shape how the trends look.

So yes, there is a potential for misleading interpretation here. But at the same time, I think this falls into a gray area. If the underlying statistics are solid and the goal of the figure is to clearly communicate a pattern, then using dual axes to show two opposing trends (disruption going down, citations going up) is understandable.

What you suggested—separating disruption and citations into different graphs—definitely makes sense and would avoid that comparability issue. But I don’t think there is a single “correct” choice here. The authors are prioritizing a specific narrative: within each domain/dataset (articles, patents, software), you see two trends moving in opposite directions. The current design makes that very immediate.

So I would say your suggestion is valid, but it’s more of an alternative design choice rather than a clear improvement over what they did.