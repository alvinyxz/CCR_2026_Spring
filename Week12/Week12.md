# 1. Discussion Topic: [Week 12] Readings[Week 12] Readings
Find the readings for the week at: https://z.umn.edu/J8500_Syllabus

The course is organized as a seminar, which means all students are expected to attend all classes, have read and thought about all readings prior to each class, and participate actively and productively in class discussion.

In general, before class, you should have carefully thought about: (1) how the computational methods used in each study helped address the specific research questions of interest to the authors, (2) in what sense these computational methods could extend conventional methods, (3) what are their major assumptions and limitations, and (4) what new arenas for future research these computational methods could open.

To facilitate discussion, each week, all students will submit (to the whole class and me) at least TWO thoughtful questions or comments of interest to you emerging from the week's readings. These discussion questions/comments should be posted to the "Discussions" section on Canvas (named "[Week X] Readings") at least 24 hours before the scheduled class meeting. You are also encouraged to read other students' questions/comments and reply to them. Regardless of whether you are the Reading Lead for a certain week's readings, you should still post to participate in the discussion.

Canvas Discussion & In-Class Participation will be evaluated based on: (1) the depth and quality of your contributions to the Canvas Discussion, and (2) the engagement and quality of your participation in class.


## 1.1. Carolina Aguiar Da Silva
Apr 9 11:09am
| Last reply Apr 18 6:27pm

Reply from Carolina Aguiar Da Silva
Lu et al., 2025: I understand that using an LLM in this case helps with speed, consistency, and scaling the classification across the full dataset. However, when I look at the prompts in Table 2, it makes me think that if someone wanted to replicate this study in the future, it might be difficult, since small changes in the prompt could lead to different classifications. Is that correct? Does this reflect a limitation of LLMs in terms of generalizability and replicability? What can researchers do to minimize this issue?

Park et al., 2023: This is both fascinating and concerning. I was wondering whether this approach raises ethical issues, but also, from a methodological perspective, whether it could be used to predict behavior. For example (at a very general level), if I know a community’s beliefs (as encoded in memory), attitudes (as reflections), and social norms (as represented in social interactions), and I manipulate these within agents, could I simulate how an antivaccine individual might respond to a future pandemic, based on a theory such as the Theory of Planned Behavior? At the same time, I feel that the results might not be very clear, because it would be difficult to isolate what exactly caused changes in behavior. Also, since this does not seem to be a fully transparent method, it could potentially reinforce antivaccine stereotypes. I think my main question is whether this approach can be applied in real-world contexts to understand behaviors.

### 1.1.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 18 6:27pm

Reply from Alvin Zhou
On the Lu et al. prompt replicability question: yes, you're correct, and this is a real and recognized limitation. I'll paste below a paragraph from an editorial I mentioned in class that addresses this directly:

"A second challenge is reproducibility. Scientific claims require workflows that can be inspected, rerun, and evaluated by others, yet this standard is difficult to satisfy when generative systems are proprietary, probabilistic, and subject to change without notice... Because these challenges are largely structural and cannot be fully resolved, the field's standard for reproducibility must adapt: the goal is not whether future researchers can paste a prompt into a different model environment and expect identical results, but whether the same analytical workflow can be rerun under sufficiently similar conditions."

In practice, though, results tend not to vary as dramatically as you might fear when prompts change slightly. A well-executed study will test multiple prompt variations and run the pipeline several times to check for internal consistency. So the concern is real, but it is also manageable with good research practices and those practices are increasingly being formalized.

On the Park et al. questions: as I mentioned in class, generative agents can cut both ways. On the prosocial side, journalists could, for example, use simulated agents to represent different cultural or demographic backgrounds and test whether their writing creates interpretation barriers for immigrant communities --- this paper should be online soon from the special issue I mentioned.

On whether it can scale to real-world contexts: it's very difficult. The most ambitious attempt I've seen used 1,000 generative agents (https://arxiv.org/abs/2411.10109), and even that paper's headline finding is essentially just... the number 1,000. Real society is billions of people across vastly different geographies, demographics, and personality profiles, that's nearly impossible to simulate faithfully. Generative agents are more realistic than traditional agent-based modeling, but they're still far from societal reality. I find generative agents fascinating and conceptually elegant, but I'm skeptical they're ready to be the primary method for predicting real-world behavior, at least not yet.

## 1.2. Anastasia Micich
Apr 10 1:04pm
| Last reply Apr 19 1:21am

Reply from Anastasia Micich
Gilardi et al. (2023)

The authors use ChatGPT in a zero-shot setting — meaning no labeled examples are provided in the prompt. How might the structure and wording of the prompts have influenced annotation outcomes? To what extent can conclusions be generalized across different prompt formulations, and how should researchers document and justify prompt choices?

 

Cotter et al. (2025)

I would imagine that reproducing a study that relies on proprietary AI tools for content analysis poses significant challenges, since model outputs may differ across API version for prompt phrasings. How should researchers approach reproducibility given these limitations?

### 1.2.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 19 1:21am

Reply from Alvin Zhou
Prompt wording and structure matter a lot, and there is real computer science literature on how to construct better prompts for annotation tasks. Some practical principles: setting up a persona at the start (e.g., "You are a professional emotional valence classifier"), writing out the codebook as clearly as possible, and keeping instructions unambiguous tend to improve accuracy and consistency. A good rule of thumb is that if the prompt is clear to a human, it will generally be clear to the model too. As for generalizability, the standard approach is to use human coding as the gold standard and assess how well GPT aligns with it. If alignment is high, you can treat the GPT output as functionally equivalent to human coding and consider it generalizable. Researchers should also document how consistent GPT outputs are across multiple runs, essentially treating repeated runs as independent coders and calculating intercoder agreement across them. In practice, though, not many papers do this rigorously right now because there are so many moving parts and people get overwhelmed by what to put in the appendix. The field is still evolving, but I think we will see more and more papers reporting the full prompt development process, not just the final prompt. The first prompt you tried and why it failed is actually valuable scientific information.

On the Lu et al. question: (the paper may not be Cotter et al., I think you are referring to Lu et al. (2025)) Regardless of whether a study uses a proprietary API (I think they just used OpenAI GPT?) or an open-weight model, the reproducibility problem is structurally similar. An editorial I mentioned in class puts it well: the goal of reproducibility for LLM-based workflows should not be whether a future researcher can paste the same prompt into a different model environment and get identical results, but whether the same analytical workflow can be rerun under sufficiently similar conditions. That is a more realistic and appropriate standard. In practice, results tend not to vary as dramatically as you might fear when prompts change slightly. A well-executed study will test multiple prompt variations and run the pipeline several times to check internal consistency. The concern is real, but manageable with good research practices and those practices are increasingly being formalized. You can also refer to the PNAS Nexus instructional paper from class for a more detailed discussion of this.

## 1.3. Namuun Tsegmid
Apr 12 5:10pm
| Last edited Apr 12 5:12pm
| Last reply Apr 19 2am
View History

Reply from Namuun Tsegmid
Gilardi et al. (2023) show how AI tools can be used for text annotation. I am not familiar to using AI for this purpose, so it was interesting to learn that tools like ChatGPT can be used either alongside or potentially in place of crowd coders.

I understand that the accuracy metrics were computed using trained human coders as a benchmark. However, I am curious about how intercoder agreement is calculated when using ChatGPT. How does that process work, and what does the “temperature” parameter represent in this context? When ChatGPT performs coding, does it generate a single deterministic output, effectively acting as one “coder,” or can it be treated as multiple coders under different settings?

Than et al. (2025) find that zero-shot prompting outperformed few-shot prompting. I found this result particularly interesting because it highlights how human coders often require more detailed codebooks and examples to classify text accurately, since context plays an important role in human interpretation. It makes sense that we should not expect LLMs to mirror human cognitive processes. In that sense, we can develop separate codebooks specifically for human coders and LLMs for same dataset. For LLMs, zero-shot prompting may be more effective because it is more straightforward, because as the authors explain, additional examples in few-shot prompts may introduce noise to classification task.

Since this study focuses on textual content analysis, additionally I am wondering whether researchers are also using AI tools to code qualitative interview data inductively, and how qualitative researchers have been adapting to or resisting AI in recent years. Personally, I think LLMs and other tools can support qualitative research to some extent, but not replace or fully automate the interpretive process.

### 1.3.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 19 2am

Reply from Alvin Zhou
Good questions, and hopefully Thursday's class already answered some of them. On intercoder agreement with GPT: because the model is stochastic, every run produces slightly different outputs even with the same prompt. So the approach is to run the same script multiple times and treat each run as an independent coder. Run it three times, treat them as three student coders, and calculate intercoder agreement across those three instances.

On the temperature parameter: the short version is that it runs from 0 to 2 and controls how creative or unpredictable the model's outputs are. Lower temperature gives you more rational, consistent, predictable results; higher temperature gives you more novel but also more erratic outputs. Human writing tends to fall somewhere in between. For a quick intuition, I'd honestly just search for a short YouTube or TikTok explainer on "LLM temperature" -- there are good 60-second videos that will make it click. And no, GPT does not produce deterministic outputs. Even with the exact same prompt, running it now versus tonight will give you slightly different results. For simple binary tasks on a small number of texts, you might run it ten times and get perfect agreement, but for a million items coding an abstract construct, you should not expect consistency without explicitly testing for it.

On your zero-shot versus few-shot observation: your interpretation is reasonable, but I want to offer a slightly different one. In qualitative research especially, going in with too many pre-loaded examples through few-shot prompting might actually bias the model toward those frames and constrain what it finds. So zero-shot may be preferable not just because examples add noise, but because it preserves more openness in the coding process. That said, I am not a qualitative expert, so take that with a grain of salt.

On whether qualitative researchers are using AI for inductive coding: this is a genuinely contested area. I will be honest that I am personally against using LLMs for qualitative research, and I have seen strong pushback from the qualitative community. The paper I mentioned in class where LLMs do focus groups or interviews for researchers strikes me as particularly problematic, because if you cannot talk to participants or observe the phenomenon directly, the core rationale for doing qualitative research collapses. There is a saying that using generative AI is the fastest path to mediocrity. If you want to produce outstanding work, human intelligence is still irreplaceable, especially in qualitative traditions. It is an open and polarized debate right now, and I will note that the people most enthusiastic about LLMs in qualitative research tend not to be qualitative researchers themselves.

## 1.4. Kaiyi Yu
Apr 14 2:51pm
| Last reply Apr 19 2:36am

Reply from Kaiyi Yu
I think Lu et al.’s (2025) study is very interesting. They conducted an experiment, but to reduce self-report bias, they did not use closed-ended questionnaires to have participants report on scales. Instead, they asked participants to provide comments and then conducted text analysis. They combined STM and LLM. I understand that STM is used as an inductive analysis approach to develop categories and the codebook, and then LLM is used to code the textual data, transforming it into structural variables, either positive stance or negative stance.

Since they used both STM and LLMs for text analysis, can the latter replace the former? I don’t see a very important role for STM here because they also manually coded some portion of data as training data. I noticed that they used human coding to develop prompts for GPT coding. It seems that STM did not have a big role here. So I assume that STM is just used to take an initial glance at the textual data and get some insights for human coding. STM appears to play a more important role in answering RQ2, which asks a more inductive/descriptive question to identify the specific themes expressed beyond the binary stance of the comments. On the other hand, STM can include covariates in the model. Is it okay if they just use STM to see how different themes vary across different treatment/control groups?

Than et al.’s (2025) study makes me feel very excited to see how LLM can assist qualitative coding. They found that LLM performs well in qualitative coding and categorizing even for long, abstract articles. In this study, they assess the validity and reliability of LLM coding through several methods, including comparing LLM with human coding and computing inter-prompt and inter-model agreement. If we use LLM to assist qualitative coding in an empirical study, how should we prove to reviewers the reliability of LLM results? Is it a standard process to experiment with different prompts? I am also wondering what the ethical considerations are when using AI tools to assist coding, especially for interview or survey answers that require IRB approval.

### 1.4.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 19 2:36am

Reply from Alvin Zhou
That combination of experimental control and open-ended computational analysis actually appears in the original Roberts et al. STM papers from 2014/2019 in AJPS/APSR, which we read earlier in the semester. Worth going back to those if you want to see the approach in a more purely political science context.

On why they used both STM and GPT coding: the authors explained it directly. The STM topics did not cleanly distinguish between sentiments toward the edible products versus stances toward the CWLs, and the initial topic structure was too general. Critically, the GPT coding categories were selected from the larger pool of STM topics, so STM was not redundant but actually scaffolded the supervised step. My honest read is also that when they originally ran this study, GPT coding was not yet as prominent, so STM was the natural first move. The methodological takeaway I want you to internalize is that STM and GPT coding serve different purposes. STM is unsupervised and exploratory: you use it when you want to get familiar with a dataset without prior assumptions. GPT coding is supervised and targeted: you use it when you already know what you are looking for. Using STM first helps you build better prompts. That is a workflow I generally recommend. Could they have just reported the GPT coding? Probably. But the STM adds contextual richness, grounds the prompt design, and shows the analytical process.

On your STM-with-covariates question: yes, that is a legitimate approach and is exactly what Roberts et al. demonstrate. But I think using binary GPT coding and running a regression will generally be more attractive to reviewers because it looks more quantitative and maps onto familiar inferential frameworks.

On proving reliability to reviewers when writing your own papers: stick to the same robustness checks as Than et al (maybe put it in appendix). Report the different models you tried, the different prompts you tried, and show that running the same model with the same prompt multiple times produces consistent results. That transparency is what makes the work defensible. Also worth noting: if you are running text through LLM to produce binary codes and then running regressions, the paper is already quantitative at that point, regardless of where the data came from. So how to make it still "qualitative" is a question...

On the IRB question: honestly, I do not know, and I do not want to guess. My instinct is that using AI to assist with coding of already-collected data is probably more of a software tool question than a new IRB issue, but don't quote me on that. Maybe ask IRB coordinator or a faculty member who works with qualitative methods?

## 1.5. Isabel Garlough-Shah
Apr 14 4:17pm
| Last edited Apr 16 4:04pm
| Last reply Apr 19 12:32am
View History

Reply from Isabel Garlough-Shah
The Lu et al. (2025) paper was incredibly fascinating on a subject and methodological level. Something I was curious about was the integration of intercoder reliability with LLMs and the difference between intercoder reliability in pro vs. anti-cannabis stances. In the methods and limitations, the authors explain how pro-cannabis comments had a  krippendorff's α of .86, whereas anti-cannabis comments had a krippendorff's α of .67. From my knowledge, and I am not sure if this is an arbitrary number choice, but the ideal level for krippendorff's α is usually 0.8.  While this lower agreement in anti-cannabis comments is acknowledged by authors, I wonder if this brings up any concerns regarding the findings that prominently point to participants reacting negatively to  both textual and pictorial CWLs? Would this lack of agreement affect the LLM that coded comments? What kinds of effects could occur?

In tandem with this the Than et al. (2025) piece really had me reeling because from my understanding the purpose of qualitative coding is to create nuanced themes whereas LLM’s seem to replicate human knowledge and not create it. Furthermore, qualitative coding feels more iterative and complex, due to the fact that coders encounter new knowledge, phases, etc. that make them refine themes. Due to this I was surprised that LLM’s did a good job matching hand-coded outputs from the original McCall (2013) study. Something I am curious about is whether the LLMs were able to search out this original study and that's why it did a good job replicating human coding? Has any previous research examined how qualitative coding compares to LLM coding with an unpublished study?

### 1.5.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 19 12:32am

Reply from Alvin Zhou
First, let's make sure we're on the same page: the 0.86 and 0.67 Krippendorff's alpha values are intercoder reliability scores between human coders, not a measure of how well the LLM aligns with humans. So the concern is really about the human coding quality, not the LLM coding. Anti-cannabis comments being harder to code consistently makes sense -- negativity can be quite nuanced. The real implication is that if human agreement on that category was lower, the underlying "gold standard" labels may be less reliable, which could make those particular findings a bit less robust. But this does not directly affect the LLM coding process, because when the authors assess how well the LLM aligns with humans, they feed it the resolved human consensus labels. What I will note, though, is that the authors never reported how they resolved that disagreement (as a reviewer, I should have caught this). With a 0.67 alpha, there must have been meaningful disagreement among coders, and they should have been explicit about how they settled it -- majority rule, a third coder, etc.

For your question about Than et al. (2025): it is highly likely that the original McCall (2013) study being in the LLM's training data is at least part of the explanation. But I would not overstate that effect. LLMs are fundamentally black boxes, and having a study in the training data does not straightforwardly translate into replicating its coding scheme. If you remember the instructional reading on how LLMs work, what they are doing is learning a dynamic embedding from a massive corpus and using that to generate new text -- it is not "remembering", retrieving, and applying a study the way a human researcher would. So yes, training data exposure is probably a factor, but likely not as mechanically direct as it might seem. And your broader intuition about whether LLMs would do as well on an unpublished study is a good one. My inclination is that they probably still would, but there is real philosophical debate about that, and it is an open empirical question.

More broadly, I will be honest: I am personally against using LLMs for qualitative research, and I have seen strong pushback from the qualitative community. The paper I mentioned in class -- where LLMs do focus groups or interviews for researchers -- strikes me as particularly problematic, because if you cannot talk to participants or observe the phenomenon directly, the core rationale for doing qualitative research collapses. There is a saying that using generative AI is the fastest path to mediocrity. If you want to produce outstanding work, human intelligence is still irreplaceable, especially in qualitative traditions. It is an open and polarized debate right now, and I will note that the people most enthusiastic about LLMs in qualitative research tend not to be qualitative researchers themselves.

## 1.6. Jiarou Chen (she/her)
Apr 15 11:28am
| Last edited Apr 16 12:42pm
| Last reply Apr 18 7:02pm
View History

Reply from Jiarou Chen
Than et al. (2025) illustrates how LLM performance fluctuates across different contexts and is influenced by numerous factors. Since these models update rapidly, the effectiveness of a specific model and prompt structure, which is the main contribution of this study, might shift within months. Does this mean we must conduct these kind of large-scale evaluations periodically, just like commercial annual reports? If so, is this a sustainable or meaningful pursuit for the field? Furthermore, we should also be cautious about the interpretation of performance "differences". In the context of understanding complex qualitative data, is a 0.02 difference in an F1 score truly consequential? Instead of focusing on marginal gains in indicators, should our attention shift toward the stability of these models as reliable research assistants?

Witte et al. (2026) also mentioned the concepts of zero-shots and few-shots, but their approach seems to be different from that of Than et al. (2025). It carried out image classification using both of these methods simultaneously, then "After generating both zero-shot and few-shot predictions, we perform a final inference step in which the model is prompted to assign a single class label." Why does this article need to perform such an operation? Why can't it directly compare which of the zero-shot and few-shot methods is more effective?

 

It's also a less relevant question from Than et al. (2025)...I personally think qualitative analysis relies on deep interpretation and the "aha moment" (when the narrative suddenly makes sense). This sense of serendipity is deeply subjective. I also believe that different researchers may arrive at different findings by engaging with the same material. If this interpretative journey is outsourced to an LLM, does the analytical process lose its intellectual vitality? Could this lead to findings that are technically accurate but ultimately mediocre, lacking the depth that only a human tool can provide?

### 1.6.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 18 7:02pm

Reply from Alvin Zhou
Great questions throughout. For the first one: technically, yes, large-scale evaluations need to be conducted periodically to ensure robustness. But I think the fear is a bit overblown. My relatively optimistic take is that newer models tend to be (almost) better than older ones, especially for coding and classification tasks. On the 0.02 F1 difference: it does not matter, and this ties back to the core argument I've been making all semester. Computational methods exist to help you answer social science questions. If a marginal gain in a metric does not move the substantive needle, it does not really matter. That said, I would not say our attention should shift entirely toward stability either, because I think stability will largely take care of itself as models improve. What we actually need is better research practice across the discipline: run the same model multiple times with different prompts, and communicate all of that transparently in an open-science spirit.

For the Witte et al. (2026) question: the reason they generated both zero-shot and few-shot predictions and then did a final inference step is that their goal was to compare vision-language models against prior methods, and they needed a single final label to represent what VLMs can do. Zero-shot and few-shot are just two different ways to elicit that label. So they prompted the model one more time, essentially saying: zero-shot gave this label, few-shot gave this label, which one should be the final answer? That way, instead of comparing method A, method B, VLM-zero-shot, and VLM-few-shot as four separate entries, they collapse the last two into a single VLM prediction and compare it cleanly against the other methods.

And your last question is a genuinely philosophical one. I will be honest: I am personally against using LLMs for qualitative research, and I have seen strong pushback from the qualitative community. The paper I mentioned in class --- where LLMs do focus groups or interviews for researchers --- strikes me as particularly problematic, because if you cannot talk to participants or observe the phenomenon directly, the core rationale for doing qualitative research collapses. Your point about findings that are technically accurate but lacking depth is a good one too. There is a saying that using generative AI is the fastest path to mediocrity. If you want to produce outstanding work, human intelligence is still irreplaceable, especially in qualitative traditions. It is an open and polarized debate right now, and I will note that the people most enthusiastic about LLMs in qualitative research tend not to be qualitative researchers themselves.

## 1.7. Ruiheng (Rachel) Sun (she/her)
Apr 15 3:14pm
| Last reply Apr 19 1:51am

Reply from Ruiheng (Rachel) Sun
I think this week’s reading provides some thoughts about applying LLM in future research. Some articles support that LLM could be a robust way. For example, the results from Gilardi et al. (2023) is inspiring that ChatGPT outperforms crowd workers in annotation tasks. Abdurahman et al. (2024) also suggest some pros and cons. Overall, I wonder if LLMs-related research could be reproductive? Even though researchers can be transparent, such as reporting exact prompts, will results be the same every time?

I find Lu et al.’s (2025) article very interesting and their method pipeline is impressive. The experiment seems to have too many participants, and I’m not sure this is intentionally done because they need a large amount of data for structural topic modeling. I do wonder if they have a type 1 error, because they probably don’t need 3k participants. Their method also reminds of the instructor talking about incorporating computational methods in an online experiment, and I think this article is a good example. The authors wrote: “We improved prompts through multiple experiments to enhance performance (see Table 2), including more negative examples than positive ones given the more implicit nature of negative sentiment (p. 11).” I wonder why they only give positive or non-positive examples in pro-cannabis stance prompts, and only give negative or non-negative examples in anti-cannabis stance prompts. Also, why don't they separate comments for different conditions in STM? I think they might get different topics across conditions and could make a comparison.

### 1.7.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 19 1:51am

Reply from Alvin Zhou
The reproducibility question is a real and recognized challenge. I will paste below a paragraph from an editorial I mentioned in class that addresses this directly:

A second challenge is \textit{reproducibility}. Scientific claims require workflows that can be inspected, rerun, and evaluated by others, yet this standard is difficult to satisfy when generative systems are proprietary, probabilistic, and subject to change without notice. Commercial models may update silently, open models may shift across checkpoints, and outputs may depend on system prompts, preprocessing decisions, retrieval contexts, inference settings, or tool integrations that are often only partially disclosed. Because these challenges are largely structural and cannot be fully resolved, the field's standard for reproducibility must adapt: the goal is not whether future researchers can paste a prompt into a different model environment and expect identical results, but whether the same analytical workflow can be rerun under sufficiently similar conditions. It is also worth distinguishing reproducibility from replication: reproducibility refers to whether the same results can be obtained from the same data, code, and workflow, whereas replication concerns whether similar findings emerge with new data, new samples, or independently reconstructed workflows \parencite{atteveldt_toward_2019,national_academies_of_sciences_engineering_and_medicine_reproducibility_2019}. Both are essential for GenAI-assisted CCR, but they address different threats to cumulative knowledge: a study may be reproducible yet fail to generalize across contexts, just as a study may be difficult to reproduce exactly while still yielding substantively similar patterns across alternative implementations. Achieving this standard requires systematic logging and versioning of the broader inference pipeline, including the model provider and version, prompts or instructions, preprocessing decisions, relevant settings, and post-processing rules. Critically, this documentation must extend beyond the final prompt: researchers should record and share the major prompt-development decisions that shaped the analytic pipeline, so that later scholars can audit the development process and not merely inspect the final prompt it produced. Strengthening reporting norms around this broader form of workflow documentation is therefore essential for making GenAI-assisted research auditable and comparable across studies and over time \parencite[see][]{munger_limited_2019,chan_what_2024}.

On the sample size question: they actually justified it explicitly. They powered the study to detect a small effect size of f = 0.10 at 95% power with alpha = .05, which is what drove the large N. The manipulation is subtle, especially the pictorial warning labels (it is in the appendix), so targeting a small effect size makes sense. And honestly, if you have the budget, more participants is never really a problem.

On the positive/nonpositive framing: that is just how the codebook is constructed. They are doing binary classification: a comment is either positive (1) or not-positive (0), and separately either negative (1) or not-negative (0). The "nonpositive" and "nonnegative" categories absorb filler and neutral comments. So GPT is just coding one or zero for each pass, which is clean and straightforward.

On your STM suggestion: I think what you are proposing is running STM with condition as a covariate, which is actually a good idea and is exactly the approach used in the original STM paper (Roberts et al., 2014 or maybe 2019? in APSR or AJPS?, if you remember from earlier in the semester). That said, the authors' goal here was to create a label for regression, and STM topics do not map cleanly onto positive/negative distinctions (as much as GPT coding them into 1/0 does). So for the purpose of predicting how treatment conditions affected comment valence, GPT coding is a more direct and interpretable path. Your proposed approach would be great for understanding thematic variation across conditions, but it is a different analytical goal.

## 1.8. Eun Sun Kyoung
Apr 15 3:31pm
| Last reply Apr 19 12:46am

Reply from Eun Sun Kyoung
1.

Abdurahman et al. (2024) cited the definition of reproducibility as the ability to replicate and verify results using the same data and methods.
According to Gilardi et al. (2023), an analysis with lower temperature of ChatGPT showed higher intercoder agreement. They suggest that lower temperature seems to increase consistency and may therefore be preferable for annotation tasks.

In this context, is intercoder agreement equivalent to reproducibility? Or does intercoder reliability obtained from multiple ChatGPT runs differ from reproducibility?

Additionally, for more complex text analysis tasks, would a higher temperature setting be more appropriate or effective?

 2.

From my understanding, Lu et al. (2025) compared ChatGPT text analysis results with human-coded benchmarks and only evaluated performance using precision, recall, and F1 scores.

In this case, is it acceptable not to assess reproducibility when deploying few-shot learning with human-annotated examples and prompt-based methods, as they did? In my experience, ChatGPT outputs can vary not only with small changes in prompts but also across repeated runs with the same prompt.

Should researchers always evaluate ChatGPT’s intercoder consistency or reproducibility? Or are there certain conditions under which such evaluation can be reasonably skipped?

### 1.8.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 19 12:46am

Reply from Alvin Zhou
For the first one: intercoder agreement and reproducibility operate at different levels. Reproducibility means that if you run the same code on the same data, you get the same result. For LLMs, that would mean giving GPT the exact same prompt and text and getting the exact same output every time -- which, as we discussed in class, is not really possible due to temperature and stochasticity. Intercoder agreement is a separate construct. It measures how much coders agree with each other, and it does not map directly onto reproducibility. When we reproduce a study, we typically use the authors' final consensus labels as-is rather than re-recruiting coders to re-code from scratch. So the two concepts are related but not equivalent. That said, your intuition about running GPT multiple times is exactly right: if you run the same prompt through GPT three times, you can treat those three runs as three independent coders and calculate intercoder agreement across them. That gives you a useful measure of internal consistency even if full reproducibility is out of reach.

On temperature for complex tasks: I would still recommend a lower temperature setting. Higher temperature makes the model more unpredictable and creative, which might sound appealing for nuanced tasks, but for any classification work you want the model to be consistent and conservative. Low temperature keeps it grounded and rational, which is what you need when coding.

For the second question: you identified a real gap. Lu et al. (2025) do not appear to report how much GPT output varied across runs, and I think they should have. My read is that during their development process they likely tested multiple prompts, and the final prompt they settled on probably produced both high agreement with human coding and high internal consistency across runs -- but they never showed that explicitly. As a reviewer, I should have pushed them to report those internal consistency numbers. The field is still working out the norms for how to best incorporate generative AI in content coding, and reporting intercoder consistency across GPT runs should become standard practice.

## 1.9. Jessica Tuleassi
Apr 15 4:39pm
| Last reply Apr 19 2:09am

Reply from Jessica Tuleassi
Gilardi et al. 

1. This week's readings about LLMs were interesting. I knew that LMMs like ChatGPT could be used for computational analysis. From the readings, LLMs are more accurate than trained or crowd coders. Based on this, if LLMs can outperform humans in annotation tasks, what does this mean for the future of research labor? Should researchers rely entirely on automated systems, or is there still a role for human judgment?

2. The study by Witte et al. demonstrates that while Vision-Language Models (VLMs) like GPT-4V provide an efficient, "zero-shot" solution for objective tasks such as identifying who or what is in an image, they are significantly outperformed by ConvNeXt in subjective tasks that measure how an image is perceived, such as its aesthetic appeal or brand personality. Additionally, the authors highlight that commercial VLMs operate as "black boxes" with restrictive safety guardrails that can unpredictably block the analysis of sensitive variables like ethnicity or gender.

Given these trade-offs, how should marketing researchers navigate the tension between the efficiency of "zero-shot" automated classification and the need for the higher accuracy, reliability, and replicability offered by task-specific fine-tuned models?

### 1.9.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 19 2:09am

Reply from Alvin Zhou
On the Gilardi et al. gold standard question: this is more of a philosophical and sociological question about the field than a purely empirical one. The honest answer is that for the next ten to fifteen years, I'm fairly confident you will still need to benchmark LLM-coded results against human judgments as the gold standard, at least in communication research. There will always be a non-trivial share of scholars and reviewers pushing back on AI-coded results, and that skepticism is not going away soon. So regardless of what the intercoder agreement numbers show, the practical and political reality of the field means human coding as ground truth is not going away anytime soon.

That said, the labor implications are real. The role of research assistants and human coders is already shifting, and people may not be hired to do the same annotation tasks they once did.

On whether researchers should rely entirely on automated systems: the diplomatic answer is to do both and be transparent about GPT's limitations. The realistic answer is that a lot of researchers are already moving toward GPT-based coding because of the accuracy and scale advantages. The replicability concern is manageable: if you run the full pipeline multiple times and get consistent results, you can make a reasonable claim of robustness even though the system is stochastic.

On your second question about VLMs and the tension between zero-shot efficiency and fine-tuned accuracy: I think the practical answer depends on what you are coding. For objective tasks like identifying objects or people in an image, zero-shot VLMs are probably good enough and the efficiency gains are real. For subjective constructs like brand personality or aesthetic appeal, the accuracy gap with fine-tuned models is meaningful and you should probably invest in the task-specific approach. On the safety guardrail problem specifically, I have seen papers handle it pragmatically: use GPT to code the bulk of the images, and when GPT refuses due to safety filters, either human-code those cases or rerun them until the model responds. It is not elegant, but it works and is worth documenting transparently.

## 1.10. Jikai Sun (he/him)
Apr 15 5pm
| Last reply Apr 19 1:40am

Reply from Jikai Sun
Gilardi et al. (2023) found that ChatGPT outperforms crowd workers for text-annotation tasks, and based on this, I have the following questions: For a long time, human annotation has been regarded as the gold standard. People compare annotations from automatic techniques and those from humans to evaluate the techniques’ performance. If the accuracy of human coding is shown to be less accurate, are these evaluation methods still valid? If not, what new approaches should we consider for determining the gold standard for annotation?

Park et al. (2023) is a classical work of using LLM for human behavior simulation. As mentioned by the authors, their architecture suggests applications in multiple fields, like designing virtual worlds and games, and they also argue that the NPCs with believable behavior, powered by LLM, could enhance player experiences in games. Actually, in the current electric game industry, several games attempt to use LLM to make the dialogue between players and NPCs less repetitive. However, players' responses to such features are always mixed. There are two main drawbacks of LLM-based NPCs: (1) They may give highly out-of-context dialogue due to the open-ended nature of LLMs, (2) The issue of repetitive dialogue may still remain, though manifested in a different way.

For art forms like virtual worlds or games, a more fundamental question may be whether a good story is a story whose every element is carefully plotted, or a story that allows space for much randomness. Answers to these questions may better guide our thinking about how LLMs can be applied more appropriately in industry.

### 1.10.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 19 1:40am

Reply from Alvin Zhou
On the Gilardi et al. gold standard question: this is more of a philosophical and sociological question about the field than a purely empirical one. The honest answer is that for the next ten to fifteen years, I'm fairly confident you will still need to benchmark LLM-coded results against human judgments as the gold standard, at least in communication research. There will always be a non-trivial share of scholars and reviewers pushing back on AI-coded results, and that skepticism is not going away soon. So regardless of what the intercoder agreement numbers show, the practical and political reality of the field means human coding as ground truth is not going away anytime soon.

On your second point, great thinking. The game I mentioned in class that is actually doing interesting things with LLM-based NPC dialogue/setting is Vaudeville: https://store.steampowered.com/app/2240920/Vaudeville/

## 1.11. Qiling Wu (she/her)
Apr 15 5:34pm
| Last reply Apr 19 2:28am

Reply from Qiling Wu
Lu et al., 2025

I found the use of open-ended responses in this paper really interesting. It actually reminds me of the belief elicitation approach often used in health campaigns, where researchers try to identify what people think and believe in order to design effective messages. But at the same time, this study feels quite different in that it is not just eliciting existing beliefs, but experimentally testing what changes what people say in a specific communication context. I think that makes it particularly compelling, especially for studying social media environments.

I also found their use of stance classification very compelling. Compared to sentiment analysis, which can sometimes be noisy or less interpretable, stance seems to provide a more meaningful way to capture how people position themselves toward the topic. Also, it seems like a hybrid between human coding and supervised machine learning. I was also thinking about how the stance classification approach here relates to supervised machine learning. It feels quite similar in that it relies on human-labeled examples and evaluates performance against a benchmark. At the same time, it seems different from traditional supervised learning because the model itself is not trained, but instead using LLM guided through prompting? 

Park et al., 2023

As a heavy Sims player, I love this article. It feels like a Sims-style world powered by LLMs, where agents don’t just respond but actually live, interact, and form relationships over time. It also reminds me of agent-based simulation approaches discussed in previous seminars (not sure whether it's the correct name). My understanding is that this work replaces traditional agents with LLM-driven ones, which makes the resulting behaviors much more complex and human-like? 

At the same time, I’m not sure how to think about the trade-offs here. Compared to traditional ABM, this approach seems much more realistic, but it also feels more like a black box. I’m also curious about how publishable this type of work is in communication journals. Since this paper was already doing LLM-based agent simulation in 2023, I wonder whether this is becoming a more accepted approach, or if it is still mostly being done in computational or HCI fields.

### 1.11.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 19 2:28am

Reply from Alvin Zhou
Yes, it is not just capturing what people already believe but experimentally testing what shifts how they express themselves in a social media context. That combination of experimental control and open-ended computational analysis is also in the original STM papers by Roberts in 2014 or 2019 in AJPS or APSR that I assigned earlier in the class.

On stance classification versus supervised machine learning: your intuition is correct. You could in principle label a sample of comments, and then train a traditional supervised classifier using bag-of-words or embedding features. But I can tell you the classification accuracy will not be as high as LLM-based methods. What makes the Lu et al. approach interesting is that the LLM is not being trained on your labeled examples in the traditional sense. It is being guided through prompting, with human-labeled examples serving as few-shot demonstrations rather than training data. So it sits in an interesting methodological space between supervised learning and prompt engineering.

On Park et al.: yes, generative agents are best understood as a more contextualized and realistic form of agent-based modeling. On the black box concern, I actually think it is less opaque than you might expect. You can set up generative agents to output their reasoning process at each decision point, so if an agent decides to share a piece of news, it can also tell you why. That transparency is actually one of the advantages over traditional ABM. The bigger trade-off is scale. The information needed to simulate a realistic social environment grows exponentially, and memory and computational capacity are not quite there yet. The 1,000-agent paper is a step forward on that front: https://arxiv.org/abs/2411.10109 Links to an external site.

On publishability in communication journals: I will be honest, I do not think this kind of work is easily publishable in communication unless it is tightly mapped onto a theoretically important question. The method alone is not enough. I know firsthand that getting ABM-style work through communication peer review is difficult. These two papers managed it, but it took real effort: https://scholar.google.com/citations?view_op=view_citation&hl=en&user=5rEBYxUAAAAJ&citation_for_view=5rEBYxUAAAAJ:2osOgNQ5qMEC Links to an external site. and https://academic.oup.com/hcr/article/50/1/108/7238453 Links to an external site.

## 1.12. Quin Mudry Nelson (she/they)
Apr 15 9:01pm
| Last reply Apr 19 1:33am

Reply from Quin Mudry Nelson
Park et al (2023): This article was not what I was expecting just from the title being about "generative AI agents". When I think of AI agents these days, I think of the business applications: using AI-automated help lines, chat bots, and the like. I wasn't thinking of a Stardew Valley sequel prototype! As an avid gamer (and a Simmer of over 20 years), some of these "generative agent" models are exciting to think about, but I think the limitations the authors raised in the discussion are important: I say Stardew Valley specifically (and NOT a Sims game) because there were very few of these NPCs in Smallville, even less than in Stardew Valley -- and they already ran into issues where context relevance was lost if too much was thrown at the agents. There's also the contextual interpretation issues where the agents went into businesses at the wrong times, invaded each other's privacy in the dorm bathroom, among a few other things. These seem simple or at least not difficult to fix. But from what I've observed in addition to this study is that LLMs have a tendency to hallucinate/become more unpredictable the more information provided. So, while these agents seem to work okay on a smaller game scale (like Stardew Valley), a game like The Sims with at least 100 NPCs (and often far more) probably wouldn't work well with this kind of generative agent approach due to the amount of context required across neighborhoods (so not even in the same singular town environment like Smallville). And that's just single player. I can't imagine this kind of approach working in an MMORPG setting where multiple players can influence NPC behavior (that sounds like a recipe for disaster). What kinds of strategies are on the horizon/have developed since this study as to how to put up the guardrails for LLMs to keep them from hallucinating while being fed more information?

Than et al. (2025): I appreciated this article for emphasizing how important human expertise is in conducting qualitative coding and research. This is something I have been trying to reconcile in my own work: I still want to familiarize myself with my data and be the expert on it. I want to be able to provide substantive examples about the data when I present or am talking to people about my projects! But when the scale of media and data sources are massive (and growing) it is a seemingly impossible task to do alone or even with a small team. I found their approach interesting in that there were still expert coders who inform the training and prompting that goes into it. So I really appreciated the authors' emphasis on developing more clear methods on using AI as a tool to do what is quite literally unmanageable for one person to do, rather than as a replacement for thinking critically about our data and what our results mean.

I have zero interest in using any of the commercial LLMs for a multitude of reasons, but I found it interesting that the open source AI models performed better in many ways and were comparable in accuracy to GPT4. If I were to use LLMs in my work with large corpora, I would only want to use something I contributed to developing (I hate black boxes) or a more specialized open source model for researchers (if such a thing exists). However, there were inconsistencies between zero-shot and few-shot applications among the open source models that this study used where I remain hesitant. I hope we can discuss in class why these differences might be the case, and why there are inconsistencies in zero-shot versus few-shot throughout many of the articles for this week.

 

### 1.12.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 19 1:33am

Reply from Alvin Zhou
Searching what Stardew Valley is was definitely not on my bingo card for this class either. On your first point about generative agents: I think there is a real terminological mismatch here, because "agentic AI" in the everyday sense you are describing largely emerged after this paper was published in 2023. The authors' use of "generative agent" is more specific and more limited (echoing AGENT-based modeling). Your observation about more context leading to more hallucination is a good one, and as we discussed in class, one approach companies are exploring is training a separate LLM to monitor/regulate/penalize another one when it starts to go off the rails. Interestingly, the same author team later published a follow-up paper showing they could simulate up to 1,000 agents (arXiv:2411.10109 Links to an external site.), so scaling is not necessarily a dead end. The concerns you raise are valid, but the technology is moving fast.

On the zero-shot versus few-shot inconsistency question: honestly, I do not have a clean answer, and I think that is the truthful response. The reasons likely live in computer science literature, not in social science. From a social scientist's perspective, the practical answer is: try different models, try both zero-shot and few-shot, pick the one that best aligns with human judgment, and report all of those decisions transparently in your appendix as robustness checks.

On open-source versus commercial models: I understand the ethical concerns, but practically speaking, for research purposes, the workflow ends up being largely the same. Whatever model you use, you still need human validation, you still need to justify your prompts, and you still write the paper the same way. The good news is that open-weight models you can run locally are getting very good, and if you have more than 16GB of RAM you can already run some of them on your own machine. I expect local LLMs to become a genuinely viable option for researchers within a few years. And your broader point about not wanting to lose touch with your data is one I really respect, and it connects to something I want everyone to take away from this class. Think of computational methods as a toolbox, not a pipeline. You do not have to go straight to GPT coding. You can start with STM to explore, go back and read comments qualitatively to build intuition, and then use GPT coding for scale. Mix and match at different stages of the research process depending on what you need. In the end, the goal is good research, not method performance for its own sake.

## 1.13. Wenwen Cao
Apr 15 11:02pm
| Last reply Apr 18 6:42pm

Reply from Wenwen Cao
Park et al. (2023) propose a memory retrieval mechanism that combines recency, importance, and relevance to determine which past experiences shape current behavior. While this design is intuitive and computationally tractable, it implicitly assumes that human decision-making can be approximated as a weighted function of these three dimensions. I am wondering whether this formulation might be overly simplified compared to real human cognition, as it seems to treat agents as largely rational actors who make decisions based primarily on structured criteria. In reality, human behavior is often influenced by emotional and identity-driven factors that may not align with such a rational weighting process. This raises the question of how emotions might be incorporated into this framework? For instance, highly emotional or identity-relevant memories may disproportionately shape behavior, even if they are neither recent nor frequently accessed. Is it possible to simulate such effects within this framework?

Gilardi et al. (2023) evaluate ChatGPT’s performance by comparing it to trained human annotators as the gold standard, and define accuracy as agreement with these annotations. However, their results show that ChatGPT sometimes achieves even higher intercoder agreement than both crowd workers and trained annotators . This makes me question the assumption that human annotations should always be treated as the golden standard. If LLMs can produce more internally consistent annotations than humans, to what extent is it still appropriate to treat human coding as the “ground truth”? Should we begin to rethink what constitutes a valid benchmark in text analysis?

### 1.13.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 18 6:42pm

Reply from Alvin Zhou
On the Park et al. memory mechanism question: yes, it's a real oversimplification. Recency, importance, and relevance do not capture how human memory or behavior actually works (I am very forgetful even when it is recent and important for example) — and this connects to the broader limitation of generative agents we discussed in class. They are meaningfully better than traditional agent-based modeling (ABM), but still far from approximating real human society. Think about it this way: if you wanted to fully personalize an agent to represent a real person (i.e., you yourself), how many variables would you need? Gender, race, personality, emotional tendencies, life history — the list is essentially infinite. No specification can capture a person comprehensively.

Your point about rational actors is part of this. I feel like temperature parameter can affect generative agent behavior where lower temperature may produces more "rational" agents, but I am not sure... On whether emotion can be modeled: technically, yes. You can encode emotional or identity-driven tendencies directly into the agent description, describing an agent as highly reactive, emotionally driven, or prone to identity-protective reasoning. So the method is not categorically incapable of studying emotion. But if the goal is to simulate society in all its genuine complexity, generative agents are not there yet, and I honestly don't think the emotional modeling is accurate enough to be convincing.

On the Gilardi et al. gold standard question: this is more of a philosophical and sociological question about the field than a purely empirical one. The honest answer is that for the next ten to fifteen years, I'm fairly confident you will still need to benchmark LLM-coded results against human judgments as the gold standard, at least in communication research. There will always be a non-trivial share of scholars and reviewers pushing back on AI-coded results, and that skepticism is not going away soon. So regardless of what the intercoder agreement numbers show, the practical and political reality of the field means human coding as ground truth is not going away anytime soon.

## 1.14. Jiakun Liang
Apr 15 11:51pm
| Last reply Apr 19 1:05am

Reply from Jiakun Liang
1. Witte et al. (2026): Based on the findings of the article, while VLMs are particularly appealing because they can directly generate semantic interpretations of images, such as emotional tone, brand personality, or perceived aesthetics, without task-specific training or manual coding of data. the findings also show that VLMs can produce highly unreliable results and even hallucinate, which requires  validation against human judgments and systematic benchmarks before their outputs can be used for empirical evidence. However, in marketing research, some constructs we are interested in, such as warmth, luxury or trustworthiness, are inherently subjective as well. Even human coders often disagree on these dimensions, which makes it difficult to establish a gold standard for validation. How can researchers validate the results of semantic interpretations produced by VLMs when there is no clear golden standard?

2. Lu et al. (2025): In the 3x3 experimental design, the authors manipulated social media comments by presenting participants with five comments that were either all pro-cannabis or all anti-cannabis, drawn from real social media platforms and verified for their valence. However, while the valence of comments is controlled, other characteristics, such as argument strength, emotional intensity, or specific content, may vary across comments within each condition. To what extent can we attribute observed effects to the valence of comments alone, rather than to confounding variables in comment content? 

In the computational section, the authors first use STM as an unsupervised method to identify latent topic structures in participants' comments, "with T1 and T3 largely corresponding to pro-cannabis sentiments and T2 and T4 to anti-cannabis sentiments", and then apply GPT-4 for supervised stance classification. However, both approaches ultimately seem to categorize textual responses into same categories (pro vs. anti). Why do the authors still apply two different approaches to categorize the comments?

### 1.14.1. Alvin Zhou (he/him)
AUTHORTEACHER
Apr 19 1:05am

Reply from Alvin Zhou
For your first question: I think the framing here is actually to treat GPT the same way you would treat human coders or survey respondents. If humans cannot reliably agree on whether an image conveys luxury or warmth, that is a signal that the construct itself is too abstract to be coded consistently, by anyone. That is also why constructs like warmth, luxury, and trustworthiness are typically measured through self-report surveys rather than content coding. The higher the abstraction level, the lower the consistency you will get from both humans and LLMs. So in a sense, the validation problem you are describing is not unique to VLMs, it is a fundamental measurement problem. You can still get a rough sense of reliability by treating multiple GPT runs, models, or providers as independent raters and calculating agreement across them, but if humans cannot agree either, you should probably reconsider whether content coding is the right measurement strategy for that construct.

For your question about the experimental design: I think you are missing the point a bit. This is an experiment focused on internal validity. What the authors can claim is that the pro-cannabis comments they selected produced certain effects, and the anti-cannabis comments produced others, and they attribute that difference to valence. You are right that argument strength, emotional intensity, and other features could vary across comments within conditions, but that is a standard limitation of any stimulus-based experiment, not a fatal flaw. We do not usually hold experiments to the standard of perfectly isolating a single textual feature.

For your last question about why they used both STM and GPT coding: the authors actually explained this directly: the STM topics did not cleanly distinguish between sentiments toward the edible products versus stances toward the CWLs, and the initial topic structure was too general. They also made clear that the GPT coding categories were selected from the larger pool of STM topics, meaning STM was not redundant but actually helped them for the supervised step. My honest read is also that when they originally ran this study, GPT coding was not yet as prominent, so STM was the natural first move. What I want you to take away methodologically is that STM and GPT coding serve different purposes. STM is unsupervised and exploratory. You use it when you want to get familiar with a dataset without prior assumptions. GPT coding is supervised and targeted, you use it when you already know what you are looking for. Using STM first actually helps you build better prompts for the GPT step. That is a workflow I generally recommend: explore first with unsupervised methods, then follow up with more directed approaches. Could they have just reported the GPT coding? Probably. But the STM adds contextual richness, grounds the prompt design, and shows the analytical process.