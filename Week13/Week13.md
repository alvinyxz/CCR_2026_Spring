# 1. [Week 13] Readings
Find the readings for the week at: https://z.umn.edu/J8500_Syllabus

The course is organized as a seminar, which means all students are expected to attend all classes, have read and thought about all readings prior to each class, and participate actively and productively in class discussion.

In general, before class, you should have carefully thought about: (1) how the computational methods used in each study helped address the specific research questions of interest to the authors, (2) in what sense these computational methods could extend conventional methods, (3) what are their major assumptions and limitations, and (4) what new arenas for future research these computational methods could open.

To facilitate discussion, each week, all students will submit (to the whole class and me) at least TWO thoughtful questions or comments of interest to you emerging from the week's readings. These discussion questions/comments should be posted to the "Discussions" section on Canvas (named "[Week X] Readings") at least 24 hours before the scheduled class meeting. You are also encouraged to read other students' questions/comments and reply to them. Regardless of whether you are the Reading Lead for a certain week's readings, you should still post to participate in the discussion.

Canvas Discussion & In-Class Participation will be evaluated based on: (1) the depth and quality of your contributions to the Canvas Discussion, and (2) the engagement and quality of your participation in class.


## 1.1. Carolina Aguiar Da Silva
Apr 16 10:48am
| Last reply Apr 23 8:02pm

Reply from Carolina Aguiar Da Silva
González-Bailón et al., 2023

Now I understand why this article has so many authors, they conducted a wide range of analyses. However, since this class focuses on ethics, I started thinking about how this research is only possible because Meta granted access to its data. This means that the authors did not have full control over the data, and the knowledge produced is, to some extent, dependent on corporate interests.

If the only way to study digital platforms at scale is through partnerships with the companies that own the data, to what extent can we consider this knowledge truly independent and reliable, and to what extent should we do this kind of research? Moreover, is it ethically justifiable to use data from millions of users without explicit consent if the goal is to generate socially valuable knowledge?



Guess et al., 2023

This article, from my perspective, addresses the issue of consent more effectively than the previous one. Participants explicitly agreed to participate in the study. Although the sample is not fully representative, since more engaged users are more likely to participate, I see this primarily as a methodological limitation rather than an ethical problem. Given the challenges of conducting research at this scale, some level of self-selection seems unavoidable. I would be interested in hearing how others interpret this trade-off.

At the same time, I do see a significant ethical concern in the manipulation of what participants were exposed to. The study directly alters users’ information environments, and this is especially sensitive because it takes place during an election period. Even if the results suggest limited effects on attitudes and behavior, the intervention itself raises important questions. Is it acceptable to experimentally change the flow of political information people receive in such a critical democratic context? This makes me wonder whether the potential societal impact of the manipulation should weigh more heavily in ethical evaluations than the presence of consent alone.

### 1.1.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 23 8:02pm

Reply from Alvin Zhou
These are really good questions, and since you missed class, let me walk through what we discussed.

On the González-Bailón et al. study and corporate data access: the academic team and the Meta team did try to separate their responsibilities. The academics controlled what analyses to run, what papers to write, and how to frame the results and implications, and Meta did not see any of that before publication. That said, the academics still had to receive data from Meta, and even if we trust that the data were accurate and properly aggregated, the structural dependence is real. You cannot fully verify what you did not collect yourself. That is exactly why Wagner's "independence by permission" framing is so accurate. It is a concise diagnosis of the whole arrangement.

We also discussed in class a harder question: should this research have been done at all? Not from a data ethics standpoint, but from the standpoint of what it does to the broader research ecosystem. There is a real argument that this project was, in a narrow sense, somewhat selfish: a group of authors got a set of high-profile papers out of it, but in doing so may have made Meta and other platforms far more reluctant to grant similar access to future researchers. Whether that trade-off was worth it is genuinely debatable.

On the user consent question: I am actually not certain whether they sought explicit user consent, and I suspect the answer involves Meta updating its terms of service to cover this kind of A/B testing, which they do routinely for product development (but thank you for pointing out that for the Guess study, they did get explicit consent). From a platform's perspective, algorithmically changing what users see is standard operation and does not typically require individual consent. But from a research ethics standpoint, that is a much harder position to defend. The paper you should look up is Kramer et al. (2014) in PNAS, which is in your syllabus: it is a Facebook emotional contagion study that ran without user consent and generated enormous public controversy. It is a good case study for how public trust in researchers can erode quickly when people feel manipulated.

On the Guess et al. consent and manipulation question: Good observation that consent is necessary but not sufficient as an ethical criterion, and "whether the potential societal impact of a manipulation should weigh more heavily than the presence of consent alone" (love this quote!) is a question the field has not fully resolved. You would be surprised, though, by how many studies in political science run experiments during election cycles in battleground states, sometimes sending direct mail to tens of thousands of voters to test effects on turnout or vote choice. Those studies are often celebrated as high-impact research precisely because the stakes are real. But those same real stakes are also what makes the ethical questions so serious.

## 1.2. Anastasia Micich
Apr 17 11:06am
| Last reply Apr 24 5:09pm

Reply from Anastasia Micich
Clegg, 2020 (Meta)

This study is indicated to be a partnership between Meta's researchers and external, independent academics. Recently, an article in Science was released indicating that 1/3 of studies on social media have undisclosed ties to social media companies (Kupferschmidt, 2026). That is on top of studies that have disclosed ties, such as this one.

When evaluating this type of research and looking at this data, how should we think about the ties to large monetary stakeholders and powerful companies? In other words, how should we treat research about social media behavior that comes from the social media companies themselves?

Kupferschmidt, 2020: https://www.science.org/content/article/nearly-third-social-media-research-has-undisclosed-ties-industry-preprint-claims Links to an external site.



Wagner, 2023

Building off of the last question, Wagner offers a critique of this partnership, even though he concluded that "the team conducted rigorous, carefully checked, transparent, ethical, and path-breaking studies." In his abstract he aptly states, "though the work is trustworthy, I argue that the project is not a model for future industry–academy collaborations. The collaboration resulted in independent research, but it was independence by permission from Meta."

What is a better model than the one utilized by the researchers of the original work to facilitate industry-academic collaboration, to product thoughtful, unbiased, and truthful research?

### 1.2.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 24 5:09pm

Reply from Alvin Zhou
Thank you for this paper recommendation. I will include it next time I teach this week.

I want to be totally honest here, and I touched on this in class. The widespread involvement of big tech companies in sponsoring academic research is not a secret. Even ostensibly neutral funders like the Gates Foundation are, in the backend, Bill Gates, which is Microsoft. If you extend that logic far enough, the discussion becomes one about whether capitalism itself, and companies funding research in general, is ethical at all. There are parallel debates about Pentagon and military funding of academic research that run into the same wall (that founds a lot of psychology and bio research). At some point, if you apply the standard strictly enough, you will conclude that almost no one's research is fully untainted, which is not a particularly useful place to land.

I worked as a phd student on a project funded by Meta, focused on how design elements of social media platforms shape user behavior --- the unrestricted gift example I talked about in class. We had no correspondence with Meta, no discussion about the study design or findings, no connection with anyone at the company throughout the entire process from initial idea to publication. We disclosed the funding source in the resulting paper, and that was the full extent of the relationship. So I sometimes push back on the idea that industry ties are a straightforward verdict on a study's integrity. My involvement with Meta was, in a meaningful sense, zero. And I suspect many researchers who work on algorithms and political communication are in similar positions, where there is a nominal monetary connection but no actual influence. I also have colleagues in this space whose ethics I trust completely, even though they have received industry funding. It is a genuinely complicated situation.

On your second question about what a better model looks like: my best answer is a neutral third party, either a government agency or a nonprofit, that acts as a structural intermediary. The company would be legally required to provide full data access to that entity, and researchers would access it through that intermediary rather than directly through the company (something that Michigan is doing basically, but not as successful as we have thought?). That breaks the direct power asymmetry and reduces the conflict of interest risk substantially. The obvious problem is that it requires someone to trust that the government or the intermediary agency is itself neutral and will not misuse detailed behavioral data on millions of citizens. That concern is legitimate, and I do not have a clean answer for it. It is a real tradeoff.

## 1.3. Kaiyi Yu
Apr 19 9:23pm
| Last reply Apr 24 6:35pm

Reply from Kaiyi Yu
When I first read Meta’s initiative, I did not find any flaws. I felt they had thought about replication and independence issues and addressed them in their announcement. But Krause et al.’s (2024) article made me realize that their announcement may involve some concealment. For example, all their research papers have authorship from Meta internal employees, so the researchers do not work independently. Also, while Meta claimed that they did not pay researchers, they actually provided some grants. The replicability and reproducibility issues are also controversial because the data used, as well as the processing and categorization in González-Bailón et al.’s (2023), all rely on an industry-controlled approach. According to the Q&A in Meta’s initiative announcement, they seem to misunderstand the meaning of replication because only researchers selected by them can access the data and re-run the analyses under supervision. I like the summary of various challenges by Krause et al. (2024). They also proposed an interesting solution, which is to create gated panels of users for academic research within the platform ecosystem.

I don't have many cynical things to say about the issue of ethics. I am kind of jealous of these researchers who are selected to get access to the data. This power imbalance seems to have existed in academia and society for a long time. I see many researchers who work for giant tech companies while also holding positions in academia. I also see that much interesting and important research relies on data that researchers access through internships or employment within tech companies. This is particularly prevalent in qualitative research. Interview-based research may require more connections and needs to align with institutional interests. For research that relies on big data and platform ecosystems, Europe may be better because they have laws that specifically authorize data access for researchers, although confounding factors such as APIs or algorithmic distortion may not be mitigated.

I am curious about how we, as graduate students or novice researchers, should think about or respond to these ethical issues about data access. I can only think of being cautious and critical about research findings that rely on platform data.

### 1.3.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 24 6:35pm

Reply from Alvin Zhou
Yes, if only researchers selected by Meta can access the data and re-run analyses under supervision, that is not replication in any meaningful scientific sense. It is more like an internal audit with permission-based access, which is exactly the "independence by permission" problem Wagner identifies. You are right that Europe is in a structurally better position here. The Digital Services Act and related regulations give researchers legal grounds to demand data access from platforms in ways that are simply not available in the US context.

On your broader point about power asymmetry and the researcher-to-industry pipeline: I think you are describing something real and worth being clear about. A lot of important platform research does flow through internships, employment relationships, or connections that are never fully disclosed. That is not always a sign of bad faith, but it is a structural feature of the field that shapes what gets studied and what gets published. And honestly, some of the best research in platform-related areas all come from such places, where the researchers had some connections with the company/platform being studied. It is truly unavoidable at this point I think.

On how you should think about all of this as a graduate student: I genuinely do not want ethical concerns to become a ceiling on your intellectual ambition. Study what you find important and interesting. Think widely. The ethical issues we have discussed this week are real, but in the grand scheme of research practice, outright violations are still relatively rare. What I would encourage is not having a sense of paralysis after this week's readings but awareness: when you encounter a situation where the ethical path is unclear, talk to colleagues, talk to more senior people, and find a good solution collaboratively. Being cautious and critical about platform-based findings, as you put it, is exactly the right disposition. Just do not let it stop you from asking the questions worth asking.

## 1.4. Isabel Garlough-Shah
Apr 21 2:38pm
| Last reply Apr 24 2:28am

Reply from Isabel Garlough-Shah
This week I was really captivated by the González-Bailón et al. (2023) and the Krause et al. (2025) studies, especially in terms of critical responses regarding ethics. Something within the González-Bailón et al. study that was interesting to me was their definition of misinformation; here misinformation was classified using Meta’s Third-Party Fact-Checking Program.

While researchers here acknowledge “This measure of “misinformation” likely undercounts the total volume of false news circulating on the platform; but whereas specific false news stories may go undetected (González-Bailón et al., 2023, p.3), however they still utilized it and don’t necessarily justify why using this measure performs or simply is better than independent research measures. And a quick pause and question here, how did this lack of robustness within this measure not get flagged from the journal submission process?

Getting back on track, as Krause et al. (2025) discussed “Even in cases where researchers have some say in how concepts are defined and operationalized, the scholarly community lacks clear agreement among researchers, peer reviewers, journal editors, and other actors about the academic value of studies that may be sacrificing control over conceptualization and measurement in favor of novel and otherwise inaccessible data.” (p. 6).

While this demonstrates a clear conflict between industry and academic partnerships, this made me wonder if there is a world where researchers can maintain scientific independence while working with industry partners? Is this not possible when access to data depends on maintaining a relationship with the company being studied? What structural safeguards could be built and be sufficient? How and who would determine this within the field of Mass Communication (e.g. established within academia social norms, requirements within journals, requirements within conference submissions)?

### 1.4.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 24 2:28am

Reply from Alvin Zhou
On the misinformation measure question: I think it probably did get flagged during peer review, but it got explained away. As a reviewer, when you see a project of this scale, you have to weigh the limitations against what the study makes possible. The authors were transparent about the limitation and acknowledged that Meta's third-party fact-checking program likely undercounts the total volume of false content. But what is the alternative? They could not go back and independently recode every piece of content on the platform. The reviewers at Science almost certainly pushed on this, and the authors explained why no better option was available given the constraints of the collaboration. If that is the main limitation of an otherwise groundbreaking study, you still accept it. That is just the reality of peer review at this scale.

Your second question is the big one, and I want to be honest about how I think about the project. Before the Meta 2020 project, I would have said yes, with the right structural safeguards, scientific independence in industry collaborations is achievable, and I was fairly optimistic. After watching how that project unfolded, how Meta reacted to the findings, how the media covered it, and how the conflict of interest disclosures trickled out after the fact, I am less sure. I increasingly think two stakeholder groups are not enough. Researchers and industry alone cannot self-regulate this well. The model I find most appealing, even though I know it has its own critics, is a government or independent nonprofit acting as a neutral data custodian: it holds the backend data, facilitates access for researchers, and does not itself look at the research. The problem, of course, is that this basically means a government institution holding detailed behavioral data on millions of citizens, which raises its own serious concerns about surveillance. So honestly, I do not have a clean answer. I remain genuinely enthusiastic about what the Meta 2020 project achieved, and I think it was an important and rare window into platform dynamics. But looking forward, I feel more pessimistic about the structural conditions for platform-based research than I did before it happened.

## 1.5. Ruiheng (Rachel) Sun (she/her)
Apr 21 3:03pm
| Last reply Apr 24 6:07pm

Reply from Ruiheng (Rachel) Sun
I agree with Dienlin et al.’s (2021) view that communication research suffers from a lack of replication. Based on my limited observations, replication across different studies appears to be more common in marketing research. For instance, researchers often vary manipulations, change scenarios, or move online experiments to field settings. However, this practice seems less common in advertising research, likely because journals often don’t require a large number of studies.

Regarding the Meta study, there is some debate across this week’s readings. For instance, Krause et al. (2024) concern about “corporate control.” The grant support and data access from industry could change the direction of academic discourse. I understand that González-Bailón et al. (2023) make it very clear in the competing interests, but I think disclosure doesn’t mean asymmetry is solved. I agree with Wagner’s (2020) point that there is a possibility that this research might get different results, because of inaccessibility of the original data, control of the workflow. I like this quote from Wagner (2020) “independence by permission is not independent at all.” However, what is true independence? Even if it can be defined conceptually, is it practically attainable? Therefore, I think there is a need in developing stricter guidelines in industry-academic collaboration, at least for being closer to true independence.

I also believe informed consent is a big issue in field experiments. I think Guess et al. (2023) show a good example in providing informed consent through survey invitations on platforms. However, I don’t often see consent in other field experiments. Some experiments receive criticism after publication (e.g., Facebook emotional contagion) or even before publication (e.g., AI study on Reddit by Zürich last year), particularly when research may harm participants. I was wondering (at least in communication) is the absence of informed consent in field experiments a decisive factor for desk rejection, or is the editorial standard more flexible?

### 1.5.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 24 6:07pm

Reply from Alvin Zhou
On replication in advertising research: I appreciate the observation, but I do not think the issue is that advertising journals require fewer studies. It is more of a cultural problem. If you look at the Journal of Advertising, there are plenty of studies that could and should have replication components. The field just has not built that norm yet, and many journals still resist publishing rigorous replication studies because they are perceived as insufficiently innovative. That will take time to change. But the fact that you are thinking about this as a PhD student is genuinely important, because the newer generation needs to push those norms in a way the older generation did not.

On independence and ethics: as I have mentioned to others, I think of these as directions rather than thresholds. Given the structural constraints of any particular collaboration, the question is how independent and how ethical you can be, not whether you have crossed some binary line of ethical/unethical. The third-party hosting model, a nonprofit or government agency legally mandated to receive platform data and provide researcher access, is the structural fix I find most compelling, even though the surveillance implications of governments holding detailed behavioral data on millions of citizens are real and not easily dismissed.

On informed consent in field experiments: I have not done field experiments myself and I have not heard strong gossip about papers being desk rejected specifically because of absent consent, so take this with a grain of salt. My sense is it would not typically result in desk rejection, but reviewers will flag it. The more important distinction is between field experiments in the wild and field experiments online. If you put up a billboard and hope people driving by will be influenced, there is no meaningful way to obtain consent. That is a long-accepted feature of real-world field research. Online field experiments are trickier because consent is more feasible in principle, as the Guess et al. design shows. But the emotional contagion paper and the AI Reddit study complicate that picture. In both cases, treated participants were drawn from a broad population with no natural boundary around who could be exposed. If you are posting content on Reddit that any user might see, who exactly is supposed to sign the consent form? The whole platform? That is not a rhetorical question. It is a genuine unresolved problem in research ethics, and the field is still working out where to draw the line. The AI Reddit study is actually an interesting case on this front: the researchers were caught because they informed the subreddit moderator about the study halfway through. That raises the question of whether moderator consent is sufficient, but even if you accept that it is, it does not resolve the problem for the broader user population who were exposed without any knowledge of the study. The boundary remains genuinely unclear.

## 1.6. Qiling Wu (she/her)
Apr 22 10:06am
| Last reply Apr 24 6:26pm

Reply from Qiling Wu
about data interpretation
What stood out to me most in Wagner’s Independence by Permission is the idea that “what data is made available shapes what is asked and answered” (Wagner, 2023). Platform research is therefore never fully open-ended: research questions are already constrained by what data platforms choose to provide. In other words, even before interpretation begins, there is already a layer of control embedded in the research design. Although outside academics formally had the final say as lead authors, Meta Platforms later attempted to reopen control rights and allow their researchers to explicitly disagree within coauthored papers (Wagner, 2023). The important findings and interpretations can be renegotiated, especially when they carry reputational or political stakes.

This situation reminds me of the relationship between journalists and interviewees. Interviewees provide information, but they are not supposed to control how journalists interpret or present the story. However, this analogy only partially fits. In this case, Meta is not just an “interviewee”; it also controls the data infrastructure and participates as a coauthor. So the boundary between data provider and knowledge producer is really blurred in this case.

about company-academia collaboration
What I find particularly tricky about this project is not just its scale, but the fact that it operates as a large-scale intervention in a real information environment. Unlike traditional experiments, this is not simply observing behavior, it is actively reshaping what millions of users see during a politically sensitive period (Guess et al., 2023a; Guess et al., 2023b). This blurs the boundary between research and real life More broadly, the 2020 Meta election studies appear to serve two functions at once: knowledge production and legitimacy repair. As Wagner (2023) notes, Meta researchers explicitly framed the project as a way to “course correct” after the emotional contagion study and the Cambridge Analytica scandal, and to add “a critical layer of legitimacy” through collaboration with outside academics. While the resulting studies are methodologically rigorous, many of their most visible findings suggest that platform features shape exposure and engagement without producing large downstream effects on polarization or political attitudes (Guess et al., 2023a; Guess et al., 2023b). While these findings may be valid, they also align in a convenient way with Meta’s institutional interests.

Importantly, this concern is not only about interpretation but also about measurement. Some critiques have pointed out that key variables, such as misinformation, were operationalized using Meta’s own internal classifiers and categorization systems (Freiling & Scheufele, 2025). I think this raises a core responsibility issue, defining and justifying key constructs, from researchers to the platform. Instead of developing and defending their own measurement strategies, scholars delegate this task to an actor that is not neutral but has clear institutional interests. This delegation seems problematic because it embeds the platform’s own framework into the research process, raising questions about how such work can be evaluated as fully independent.



### 1.6.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 24 6:26pm

Reply from Alvin Zhou
Your journalism analogy is a good gone, and I think you are right that it only partially fits. A journalist's interviewee provides information but does not co-author the story or control the infrastructure through which the story is reported. Meta occupies all three roles simultaneously: data provider, infrastructure controller, and coauthor. That is a genuinely unusual and uncomfortable arrangement, and Wagner is right to flag the attempted renegotiation of interpretation rights as a serious problem.

On your second point about the project serving dual functions: I want to be careful here though, because I do not think that alignment between what Meta wants and what authors find automatically means the findings are wrong. It is entirely possible that platform features genuinely do not produce large downstream effects on polarization, and that the null or modest effects are real. The problem is not necessarily the findings themselves but the structural conditions under which they were produced, which make independent verification essentially impossible.

You cannot reproduce the study without Meta's cooperation in 2026, and you cannot evaluate the measurement validity of the internal classifiers without access to the same data Meta used to build them. That said, I think we should be more nuanced about which classifiers we trust and why. The ideology classifier is one I am actually relatively willing to trust, precisely because of Meta's financial interests: accurate political classification is central to their advertising targeting business, and getting it wrong has real monetary consequences. The incentive structure pushes toward accuracy. The misinformation classifier is a different story. Defining what counts as misinformation is not just a technical problem but a politically and reputationally loaded one, and Meta has clear institutional interests in where that line gets drawn. A classifier that undercounts misinformation on the platform is, from Meta's perspective, a more comfortable outcome than one that does not. That asymmetry in incentives is worth keeping in mind when evaluating how much to trust each measurement decision.

## 1.7. Namuun Tsegmid
Apr 22 2:47pm
| Last reply Apr 24 6:15pm

Reply from Namuun Tsegmid
It was interesting to read about the Meta collaboration project. I also enjoyed reading the critiques and responses as they show an open process discussing the study.

One critique pointed out that González-Bailón et al. (2023) relied on proprietary classifiers to measure ideology and political news. Should researchers independently validate these measures, or use non-Meta classifiers? Would it make significant differences in findings?

In the same critique, the researchers were said to have indirect affiliation with Meta even though they were not compensated for this project. Should ethical standards expect disclosure of any affiliation with the organization or platform, even if it is not directly related to the specific study?



For computational studies, how should preregistration be approached compared to traditional designs like surveys, experiments, or interviews where it often occurs before data collection, and should researchers be transparent about possibility of prior data exploration when working with pre-existing public data?

### 1.7.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 24 6:15pm

Reply from Alvin Zhou
On the classifier question: practically speaking, independent validation is very difficult because classifying users' ideology at that scale requires individual-level user data that Meta would not and should not release to outside researchers for privacy reasons. So you are more or less stuck with the internal classifiers. And honestly, I would trust Meta's classifiers to be reasonably good, not for altruistic reasons, but because accurate ideology and content classification has enormous monetary implications for their advertising business. The incentive to get it right is real.

On disclosure of indirect affiliations: this is genuinely a vague line, and I will be transparent about my own situation since it is directly relevant. I worked on a project as a research fellow that used gift from Meta (I mentioned it in class), with no connection to Meta throughout the study beyond the funding source, which we disclosed in the paper. Do I now need to disclose that in every future paper where I discuss Meta or Twitter? I do not think there is a clear field-wide standard on this. My personal view is that the spirit of disclosure is to flag relationships that could plausibly influence findings, and a fully arms-length unrestricted grant with zero ongoing contact (i.e., my study) is meaningfully different from a collaboration where the company had input into the research design or data (i.e., the Meta project).

On preregistration for computational studies: I think the most useful way to think about preregistration is as a running record of your analytical thinking rather than a one-time event that must happen before anything else. You can preregister your initial research design and theoretical expectations, and then if the data look different from what you anticipated, you can file an updated preregistration that documents the revision and explains why. That transparency is the actual goal. For computational work specifically, what you can realistically preregister is the research design and analytical approach. Very concrete data-level decisions are often impossible to preregister before you have seen the data, and that is fine as long as you are transparent about what was planned in advance and what emerged from exploration. The norm should be honesty about the process, not a fiction that everything was decided before any data were touched.

## 1.8. Jiarou Chen (she/her)
Apr 22 3:13pm
| Last reply Apr 24 2:10am

Reply from Jiarou Chen
(Krause et al., 2025) Apart from realizing social media platforms' effects on polarized content and emotions, perhaps a more interesting concern would be: what are we truly observing on social media platforms? The platforms and embedded algorithms, affordances, are designed based on certain social science theories. So, while we use so-called behavioral data to analyze and successfully identify some kinds of patterns, are we just capturing the response to such design, the underlying principles of theories, or the human behavior itself?

(Freiling & Scheufele, 2025) I personally think the response is reasonable. However, what I expect to hear more through this conversation is, what is the better or more “ethical” pattern of collaboration between academy and industry? If the involvement of industry will make the critic regarding COI unavoidable, what can the academy do to not be questioned as potentially “acting as” the PR team of industry? Does that mean we can only touch upon the “innocuous” questions (e.g., how to increase user engagement), rather than controversial issues (e.g., whether the platform causes systematic harm), when collaborating with the industry?

(Another question might be more of a gossip:)) Krause, who is the first and corresponding author in the first response paper, was not involved in this second round of reply. Was she not required to take responsibility for responding again? Or were there any other reasons?

### 1.8.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 24 2:10am

Reply from Alvin Zhou
Your first question is interesting but a bit layered, so I think you are pointing to a kind of epistemological trap in platform-based research (mentioned by the Krause paper): the behavioral data we collect from social media are not neutral traces of human behavior. They are produced within a designed environment where the affordances, interface choices, and algorithmic logic are themselves built on social science theories about attention, engagement, and emotion. So when we run a study and find that, say, moral-emotional language drives more sharing, are we discovering something about human psychology, or are we rediscovering the assumptions that were baked into the platform's design in the first place? The platform may have been engineered to amplify exactly those behaviors, which means our "observations" are partly artifacts of the design. In other words, the data conflate human behavioral tendencies with platform-induced responses, and we often cannot disentangle the two. This observation is very philosophical...

The honest answer is that we are probably observing some mixture of all three things you mention: human behavior, theoretical principles embedded in design, and responses to that design. Current research methods are not well-equipped to separate them. But I think experiments in this area can potentially dissect all those arrows: how theories change design, how design changes behavior, and so on. Each causal arrow can exist in its own right. In other words, there could be a "circular" cause and effect: A causes B, B causes C, C causes A. But this circular structure does not render the conclusion that "B causes C" invalid. It just makes "B causes C" a smaller claim in terms of implications, since if you zoom out, it is not actually the root cause.

On your second question about what ethical collaboration with industry actually looks like. The "independence by permission" framing from Wagner captures the core problem. Pre-registration helps because it locks in research questions and analytical plans before data access, making it harder for industry partners to selectively suppress findings. Independent advisory boards with no financial ties to the platform are another safeguard. Requiring full disclosure of COIs, including indirect ones like speaking fees and past consulting, is necessary but clearly not sufficient (given what we learned from the 2020 election project disclosures). And as we mentioned in class, almost all top-tier social scientists have received some form of funding from big tech companies. Even ostensibly neutral funders like the Gates Foundation are, in the backend, Bill Gates, which is Microsoft. If you expand that logic far enough, the question becomes one about capitalism itself.

Your concern about controversial versus innocuous questions: There is probably a self-selection effect where industry partners are more willing to collaborate on questions unlikely to embarrass them, which means the questions most worth asking may be the least likely to get data access. That said, I still think of the Meta 2020 project in a largely positive light, despite all its flaws and potential consequences. It gave researchers a window into Meta bigger than anyone had ever gotten, or may ever get again, and the questions asked were genuinely central and not apparently gatekept by Meta. That is rare enough that we should probably celebrate it, even while holding the problems clearly in view.

On the gossip question: I honestly do not know, but author dynamics in heated exchanges are real. When things get contentious, it is often the more senior or most central people who step forward to respond, while others quietly step back. That is probably why the González-Bailón and Lazer reply came from just the two of them rather than the whole team. Krause may simply have preferred not to engage once it got heated, which is a perfectly reasonable personal choice and not something worth reading too much into.

## 1.9. Eun Sun Kyoung
Apr 22 3:46pm
| Last reply Apr 24 4:21pm

Reply from Eun Sun Kyoung
Meta Press release, González-Bailón et al. (2023): González-Bailón et al. (2023) analyzes data from approximately 208 million users. Although users agree to the data policy when they signed up for Facebook (Meta) and the research complies with the platform’s data policy, are they explicitly informed about this study that their data may be used in this way? If not, is it acceptable to conduct such analysis without additional consent or notification because data are aggregated rather than at the individual level?

Meta Press release also mentions that Facebook will not use targeted ads for the 200,000–400,000 participants who opted into surveys. However, wouldn’t this restriction apply to broader or all users analyzed in research without survey? Even if individual users cannot be identified in research, isn’t it still possible that patterns derived from large-scale user data could be used to target certain groups through advertising?

González-Bailón et al. (2023) state that, to protect privacy, the researchers analyzed URLs, did not have access to individual-level data and instead relied on aggregate analysis. I am curious whether users’ political ideology is also protected. When research predicted each user’s policitical identity using Facebook’s classifier, was each user’s anonymized or encrypted? In other words, while it may not be possible to identify which news URL an individual user was exposed to or engaged with, is each user’s political ideology also impossible to track and identify? This is particularly concerning because the ability to analyze such a large number of users using Facebook’s internal ideology classifier raises important privacy questions.

### 1.9.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 24 4:21pm

Reply from Alvin Zhou
Technically, I do not think they need explicit consent here, and here is why. From Meta's perspective, this kind of analysis is not categorically different from the A/B testing they run on their platform all the time, and users formally agreed to that possibility when they accepted the terms of service. The situation does get more ethically complicated when academics are involved, which is part of what makes this project so interesting to discuss. In the Guess et al. paper, where researchers actually manipulated users' timelines, they did obtain a specific consent form. In the González-Bailón et al. paper, where the researchers are only observing aggregate patterns and not intervening, the ethical bar is lower, but the lack of informed consent is still worth flagging.

On your second question about the targeted ads restriction: I think what you are picking up on is a real tension, but let me clarify what I think the press release is saying. The 200,000 to 400,000 participants who opted into surveys were a specific recruited panel, and the ad restriction was a protection specifically for them because they were knowingly participating in a study. The broader 208 million users whose aggregate data were analyzed were not participants in that sense and were not subject to the same protections. Your deeper concern, whether patterns derived from large-scale user data could be used for group-level ad targeting even without individual identification, is actually a legitimate one, and the honest answer is yes, that is possible. Anonymization at the individual level does not prevent aggregate patterns from being commercially useful.

On the political ideology and privacy question: you are right to flag this. In a social network context, anonymizing individual-level data does not fully eliminate re-identification risk, because network structure itself can be used to reverse-engineer identities. That is a known problem in network data privacy research. On the ideology classifier specifically: I do not think it is categorically different from other inferred attributes like gender or inferred political affiliation that Meta already maintains internally. The academics almost certainly only had access to aggregated outputs, not individual-level ideology scores tied to identifiable users. But internally, within Meta, that information almost certainly exists and is routinely used for ad targeting.

## 1.10. Jessica Tuleassi
Apr 22 4:07pm
| Last edited Apr 22 4:08pm
| Last reply Apr 24 6:19pm
View History

Reply from Jessica Tuleassi
1. Based on the readings from this week, how can the independence and accuracy of research findings be guaranteed when the study relies on a platform’s internal, proprietary data and classifiers, and is funded by the very corporation being investigated? For instance, González-Bailón et al. (2023) highlight that some of the authors had funding or personal financial relationships with Meta. How does this influence the findings of the study? Even though the lead authors had no financial incentives from Meta, can we confidently say that the research is completely independent? How and if at all can past financial relationship influence future collaborations?

2. In the Wagner piece, he highlighted that "the lead author—which would always be an outside academic—would have the final decision. The only caveat to this rule would be if Meta's legal team determined there was a privacy issue or other legal constraint that might prevent publication." Also, Wagner documented that even though researchers might collaborate with industry, they do not know what they don't know, and industry partners, to some extent, are not willing to disclose information. In such situations where independence is not truly independence, and there is control of information by industry, what is the best approach to adopt to do such kind of studies? What can we classify as a legal constraint when collaborating with these for-profit organizations?





### 1.10.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 24 6:19pm

Reply from Alvin Zhou
On your first question: I want to be transparent about my own situation here because it is directly relevant. I worked on a project with Meta's gift as a research fellow (as I mentioned in class), with zero contact with Meta throughout the entire study beyond the disclosed funding source. Does that mean my future work on Meta or Twitter is compromised? I do not think so, but I also recognize the line is genuinely blurry. The spirit of disclosure is to flag relationships that could plausibly influence findings, and a fully arms-length unrestricted grant with no ongoing contact is meaningfully different (i.e., my study) from a collaboration where the company had input into the design, the data, or the interpretation (i.e., the Meta 2020 study).

Can we confidently say the Meta 2020 project is completely independent? No, and I think Wagner is right that independence by permission is not independence in any strong sense. But I also think the project deserves more credit than the most pessimistic reading gives it. It gave researchers a window into Meta bigger than anyone had ever gotten, and the central questions were genuinely important and not apparently gatekept by Meta. That is rare enough to celebrate, even while holding the structural problems clearly in view. The honest answer on past financial relationships influencing future collaborations is that the effects are probably more subtle than direct: they shape what questions seem feasible, what data seem accessible, and what findings seem publishable, rather than producing outright bias in any single study.

On your second question: the "they do not know what they do not know" problem is the hardest one, because you cannot audit what you were never shown. The best structural response, as I have mentioned to others, is a neutral third-party intermediary, either a nonprofit or a government agency, that is legally mandated to receive full platform data and provide researcher access without the company as a direct gatekeeper. That removes the most direct form of information control. On what counts as a legal constraint: that is genuinely murky, and "legal constraint" in a corporate context can cover everything from genuine privacy law to reputational risk management dressed up in legal language. The Wagner piece is right to flag that researchers often have no way to distinguish between the two, which is itself a serious problem for the credibility of any collaboration.

## 1.11. Jikai Sun (he/him)
Apr 22 5:44pm
| Last reply Apr 24 5:49pm

Reply from Jikai Sun
In Guess et al. (2023) (Reshares), they tracked participants' online behavioral data for three months. In the recruitment language (Supplementary Materials, S9), they mentioned that “You may forfeit the monthly payment if you fail to send data from your mobile device for 3 days in a row or from your computer for 8 days in a row.” I don’t know if such phrasing would encourage unnatural social media activity. In another class on Monday, we also discussed a similar issue. One possibility we talked about was that, in a long-term device tracking study, once the initial stage has passed, participants’ device activity may not deviate much from the natural condition, after adapting to the monitor. It is interesting to see how users' activities change over time in the research using tracking data, and I wonder if there are any studies that have examined this issue.

Wagner (2023) described the interaction between the outside academics and Meta in the 2020EP, and calls for a more independent academic research environment, reducing the reliance and possible compromise to the industry. The independence of academia from industry is valuable. That said, it is also important to recognize that without support from industry, academic research may receive fewer resources, struggle to deepen, or even lose focus. Institutional-level factors may also matter. For example, scholars may need to get external funding to sustain their research or meet promotion requirements. All of this makes the issue much more complicated in practice. Additionally, the independence in choosing research topics and independence at the level of data and methods are also very different. Considering these complexities, how should we understand academic independence on a more concrete and practical level?

### 1.11.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 24 5:49pm

Reply from Alvin Zhou
That is a really good observation, and I understand where the concern comes from. That said, from the authors' perspective, the payment structure makes practical sense: if participants do not send data, the researchers do not have a study. It is not entirely different from survey platforms like Prolific or MTurk where you have to complete the task to receive compensation. The deeper question you are raising, whether the incentive structure produces unnatural behavior, is a real one. I am not aware of studies that have directly examined this in a long-term tracking context, but you could imagine a design where participants are told halfway through that their compensation is already secured, and you then observe whether their behavior changes. That would give you a decent estimate of how much the payment incentive was distorting activity. It would probably live in a methods journal rather than a mainstream communication venue, but it is a legitimate and tractable question.

On academic independence: I think this class is a good starting point for working through the full complexity. Your point about the distinction between independence in choosing research topics versus independence at the level of data and methods is a good one. The third-party hosting model, a government agency or nonprofit that receives legally mandated data from platforms and provides access to researchers, is the structural fix I find most compelling, even though it introduces its own surveillance-related concerns. The University of Michigan has been moving in something like this direction, though not as effectively as one might hope. In that structure, scholars can have the independence in choosing both the research topics but also the data/methods.

Honestly, though, my overall assessment is that the current model, imperfect as it is, is not as broken as the most pessimistic accounts suggest. The influence that industry money actually exerts on academic research agendas, at least in my experience and from what I can observe in the field, is more limited than the structural critique implies. Researchers are mostly still studying what they want to study. The bigger problem is data access and power asymmetry. That is worth keeping in perspective even as we push for better structural arrangements.

## 1.12. Wenwen Cao
Apr 22 9:48pm
| Last reply Apr 24 1:28am

Reply from Wenwen Cao
Wagner (2023)
Wagner made me think about how platform collaborations may shape the future of the field, not just the interpretation of one project. If researchers can only study what the platform is willing to expose, then platform access may gradually influence not only methods but also what kinds of questions are considered feasible, fundable, or publishable. Over time, this could subtly steer communication research toward questions that are legible to platforms and away from questions that are more critical or institutionally uncomfortable. So I am wondering: does reliance on corporate access merely constrain individual studies, or can it reshape the research agenda of the field itself? If the latter is true, what kinds of safeguards would be necessary to prevent platform partnerships from narrowing the kinds of questions scholars ask?

Reading Meta’s announcement alongside these articles, I was struck by how strongly the company framed the initiative in terms of independence, transparency, consent, pre-registration, and replication. On paper, those commitments sound closely aligned with open science principles. But Dienlin et al. (2021) define open science in terms of practices like sharing materials, data, and code, preregistration, replication, and transparency, and many of those ideals become difficult when the underlying data infrastructure is proprietary and cannot be meaningfully opened to the broader field. That makes me wonder whether platform research is forcing communication scholars to rethink what “open science” can realistically mean. If a study is preregistered and carefully conducted but the data and measurement systems remain inaccessible to most other researchers, should that still count as open science in any strong sense, or do we need a separate standard for evaluating transparency and credibility in platform-based research?

### 1.12.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 24 1:28am

Reply from Alvin Zhou
On the first question about whether platform access reshapes the research agenda rather than just constraining individual studies: I think you are right that it can, but I want to push back slightly on the scope. In this specific project, I genuinely believe the academic team had essentially no limits on what questions they could ask. They controlled the research agenda, and Meta did not interfere with that. So this particular collaboration may not be the best example of agenda narrowing.

Where your concern really does apply is the everyday data access situation. When platforms give scholars API access, they decide what slices of data are available. If you can see that a tweet received five likes but cannot see who liked it, you cannot construct a network. You only know the number is five. That kind of structural constraint quietly shapes what questions are even conceivable. Granular interaction data, the kind that would let you trace who engages with whose content and build proper network structures, almost always requires going inside the platform. That is why large-scale network studies tend to require industry collaborations. The awareness that certain data are simply off the table does, over time, steer the field toward questions that are legible to the data you can actually get.

On the open science question: I think the most useful way to think about open science is not as a threshold you either reach or do not, but as a direction. How far you can go depends on your project's specific circumstances. A study on political dissidents, childhood trauma, or ad exposure to minors simply cannot be fully opened without serious ethical costs. So the goal is not universal compliance with every open science norm but rather reaching the ideal that is realistic and ethical for that specific project. Platform-based research is a genuinely hard case because preregistration and careful design can be done, but the underlying data infrastructure stays proprietary. That is a real limitation, but regarding open science, I think the principle of "do the best you can" is applicable.

## 1.13. Quin Mudry Nelson (she/they)
Apr 22 10:21pm
| Last reply Apr 24 5:36pm

Reply from Quin Mudry Nelson
Two overall questions about the FIES project:

1) How can you study the effects of political polarization on an platform's algorithm that is constantly changing -- both by the actions of users, but also by the corporation's interests?

2) How do you study the impact of Facebook's algorithm with data from after the time period in which the major change happened? Polarization doesn't happen in a blink of time (i.e., 3 months) it happens like a frog boiling in a pot of hot water, slowly turning up the temperature over time.

I ask these because, from the studies I am the lead discussant for this week: all of the data was provided by Meta, all of the studies were designed in early 2020 (and in the case of Guess et al. didn't run until a week before the 2020 election...where they limited people's access to political information and current events...). But I think those who used or have abandoned Facebook know that Facebook wasn't always full of super political posts, it really was a good way to keep up with people you knew as friends and family in real life. I think Meta put on a good show: they were cooperative, they gave researchers the infrastructure to recruit right off the platform, and even allowed the researchers to use their algorithmic classifications! Employees even helped implement their research experiments. But as far as actually getting at the data to actually assess the long-term impact of their platform...why not give researchers access to longitudinal data going years back (because I'm certain they have it) rather than conduct these experiments during the election year itself?

### 1.13.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 24 5:36pm

Reply from Alvin Zhou
I think there might be a small mix-up in your first question. I suspect you meant to ask about the effect of the platform's algorithm on political polarization, not the other way around. If that is right, the most direct way to study it is to experimentally manipulate the algorithm and observe how polarization-related outcomes change as a result. That is essentially what the Guess et al. paper does: by randomly altering what content users see, you can estimate the causal effect of algorithmic choices on downstream attitudes and behavior. The observational approach in González-Bailón et al. gets at a related but slightly different question by comparing potential exposure to actual exposure, using that gap to isolate the algorithmic contribution, and then comparing actual exposure to engagement to isolate user preferences.

On your second question: the honest answer is that you largely cannot study long-term polarization dynamics without long-term longitudinal data, and you are right that Meta almost certainly has it. However, the data structure from five years ago is also probably quite different from today's, with variables that exist now but did not then, which makes retrospective longitudinal analysis genuinely hard even if you had access. I do think the three-month election window is more defensible than it might initially seem, because that period compresses a huge amount of variation into a short timeframe: people who were politically disengaged become highly engaged, information consumption spikes, and behavioral changes are more detectable. It is a meaningful window even if it cannot answer your broader question about how polarization developed over a decade.

I also want to gently push back on the framing of what these studies are actually trying to do. They are really about information circulation and exposure patterns on the platform, not polarization per se. Polarization here is closer to a downstream indicator than the central outcome. If you want to understand why political polarization in society exists and deepens over time, you have to study real-world behavior, not just Facebook. What Facebook adds onto / how Facebook is unique is really its information/news aspect.

## 1.14. Jiakun Liang
Apr 22 11:49pm
| Last reply Apr 24 4:51pm

Reply from Jiakun Liang
1. Wagner (2023): I totally agree with his central argument that "independence by permission" is not independence. In platform research, there is an asymmetrical power relation between outside academics and companies. Platforms such as Meta possess users' behavioral data that no outside scholars can independently collect them at the same scale. As long as they control the data, true independence cannot exist. His call for broader data sharing is normatively persuasive, but large-scale platform data often contain sensitive behavioral traces. Full access may create serious privacy risks, even though for the research purposes. So in practice, how to balance the privacy and open access to users' behavioral data?

2. González et al. (2023): Messing (2023) questions González et al. (2023) conclusion that Facebook's news feed algorithm increases ideological segregation at the aggregated level, and "there are traces of algorithmic segregation in content shared by users and pages but not groups", while González & Lazer (2023) argued that "the differences are substantively and statistically significant". In large-scale platform studies with large sample size, even very small differences can become statistically significant, while their substantive effects  may remain limited. Therefore, when evaluating the effects: does significance automatically mean meaningful effects, and should practical significance and effect size be given greater importance than statistical significance alone?

### 1.14.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 24 4:51pm

Reply from Alvin Zhou
On the privacy versus open access tension: when you are analyzing users' behavioral data at scale, you genuinely cannot fully satisfy both values at once, at least at the current moment. Internally, major tech companies like Meta have sophisticated systems for anonymizing and protecting user data during analysis, but that is still internal and unverifiable from the outside. The model I find most compelling is a neutral third party, either a nonprofit or a government agency, that acts as a bridge between industry and academia. Researchers get access to the data without going directly to the company, which breaks the direct power asymmetry you are describing. The problem, of course, is that this requires someone to trust that third party, and "the government holds behavioral data on millions of users" creates its own serious concerns. So there is no clean solution here, just a set of tradeoffs that the field needs to negotiate more explicitly.

On your statistical versus practical significance question: I want to push back slightly on the framing. In computational research, we typically treat statistical significance as a necessary condition, not a sufficient one. You check significance first, and once that threshold is met, you look at effect size to assess whether the finding is substantively meaningful. The Messing critique and the González-Bailón and Lazer response are essentially a debate about whether the effect sizes in question cross that second threshold. With a sample of 208 million users, almost anything will be statistically significant, which is exactly why effect size becomes the more important evaluative criterion at that scale.

That said, there is an important wrinkle here. The outcome variable in González-Bailón et al. is a segregation index, which is not a straightforward effect size in the traditional experimental sense. It is a structural measure of how unevenly distributed content exposure is across ideological groups at the population level. For a segregation index to shift meaningfully, something substantial has to change in aggregate human behavior on the platform. So a statistically significant change in a segregation index, even a small one in absolute terms, may actually carry more real-world weight than a comparable effect size in a typical experiment. In other words, the scale of the phenomenon being measured matters for interpreting what "small" means. I think that is actually a point in the authors' favor when responding to Messing.