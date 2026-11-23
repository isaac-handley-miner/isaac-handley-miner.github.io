// Isaac J. Handley-Miner — Curriculum Vitae
//
// Build:  typst compile --font-path cv/fonts cv/cv.typ assets/cv.pdf
// (run from the repository root; see README.md)

// ---------- Style ----------
#let accent = rgb("#2a5db0")   // same blue as the website links
#let muted  = rgb("#6b6b6b")
#let rule-c = rgb("#d6d6d6")
#let sans   = ("Inter",)
#let serif  = ("Libertinus Serif",)
#let updated = "November 2026"

#set document(title: "Isaac J. Handley-Miner — CV", author: "Isaac J. Handley-Miner")
#set page(
  paper: "us-letter",
  margin: (x: 0.85in, top: 0.8in, bottom: 0.85in),
  footer: context {
    set text(font: sans, size: 7.5pt, fill: muted)
    grid(columns: (1fr, 1fr),
      [Isaac J. Handley-Miner · CV · Updated #updated],
      align(right)[#counter(page).display() / #counter(page).final().first()])
  },
)
#set text(font: serif, size: 10.5pt, fill: rgb("#222222"), lang: "en")
#set par(justify: false, leading: 0.55em, spacing: 0.9em)
#show link: set text(fill: accent)

// Section heading: small tracked sans caps with a hairline rule
#show heading.where(level: 1): it => {
  v(1.1em, weak: true)
  block(below: 0.75em, {
    set text(font: sans, size: 8.5pt, weight: "semibold", fill: accent, tracking: 0.08em)
    upper(it.body)
    v(-0.55em)
    line(length: 100%, stroke: 0.5pt + rule-c)
  })
}

// A dated entry: date column on the left, details on the right
#let entry(date, body) = block(breakable: false, below: 0.85em, grid(
  columns: (1.05in, 1fr),
  column-gutter: 0.15in,
  text(font: sans, size: 8.5pt, fill: muted, baseline: 1.5pt, date),
  body,
))

// Secondary line inside an entry
#let sub(it) = text(fill: muted, style: "italic", it)

// A reference with hanging indent
#let ref(body) = block(below: 0.85em, par(hanging-indent: 1.5em, body))
#let me = strong[Handley-Miner, I. J.]
#let doi(d) = link("https://doi.org/" + d, "doi:" + d)

// ---------- Header ----------
#block(below: 1.4em, {
  text(font: sans, size: 22pt, weight: "semibold", tracking: -0.01em)[Isaac J. Handley-Miner, Ph.D.]
  v(0.1em)
  text(font: sans, size: 10.5pt)[Director, #link("https://replications.clearerthinking.org/")[Transparent Replications]]
  v(-0.2em)
  set text(font: sans, size: 8.5pt, fill: muted)
  link("mailto:isaac@clearerthinking.org")[isaac\@clearerthinking.org]
  h(0.6em); [·]; h(0.6em)
  link("https://isaac-handley-miner.github.io")[isaac-handley-miner.github.io]
  h(0.6em); [·]; h(0.6em)
  link("https://scholar.google.com/citations?user=kPy78bQAAAAJ")[Google Scholar]
})

// ---------- Content ----------
= Employment

#entry[2026 – present][
  *Director*, Transparent Replications \
  #sub[#link("https://replications.clearerthinking.org/")[replications.clearerthinking.org]]
]

= Education

#entry[2025 – 2026][
  *Postdoctoral Research Fellow*, Boston College \
  #sub[Department of Psychology & Neuroscience]
]
#entry[2020 – 2025][
  *Ph.D., Psychology*, Boston College \
  #sub[Advisor: Liane Young]
]
#entry[2010 – 2014][
  *B.A., Economics (Honors)*, Hamilton College
]

= Fellowships & Funding

#entry[2024 – 2026][
  *Alfred P. Sloan Foundation* · \$249,538 \
  "Truth in the age of large language models"
]
#entry[2024][
  *BITSS Catalyst Grant for Advancing Transparent, Reproducible, and Ethical Research* · \$1,000 \
  "Transparent piloting: Understanding researcher practices and attitudes towards reporting pilot studies in psychology"
]
#entry[2021 – 2024][
  *National Defense Science & Engineering Graduate (NDSEG) Fellowship* · \$128,900 \
  "Who to trust? Investigating cognitive and neural mechanisms influencing evaluations of (mis)information"
]
#entry[2021 – 2022][
  *Schiller Institute Grant for Exploratory Collaborative Scholarship* · \$14,938 \
  "Leveraging philosophical and folk conceptions of truth to improve science communication practices"
]

= Awards & Recognitions

#entry[2023][
  *Graduate Student Poster Award, Runner Up*, Society for Personality and Social Psychology \
  #sub[Awarded for "exceptional poster presentations given by graduate student members of SPSP at our annual convention"]
]
#entry[2021][
  *Graduate Travel Award*, Society for Personality and Social Psychology \
  #sub[Awarded "based on the excellence of the submitted conference abstract and on the strength of the applicant's scholarly achievements"]
]
#entry[2020][
  *Presidential Fellowship*, Boston College \
  #sub[Awarded to "the most outstanding applicants, in recognition of the quality of their academic preparation and their scholarly promise"]
]
#entry[2014][
  *Soper Research Prize*, Hamilton College \
  #sub[Awarded to one student annually "for the best honors thesis in economics"]
]
#entry[2014][
  *Magna Cum Laude*, Hamilton College \
  #sub[Graduated in the top 6% of the class of 2014]
]
#entry[2014][
  *Phi Beta Kappa*, Hamilton College \
  #sub[National Liberal Arts and Sciences Honor Society]
]
#entry[2013][
  *Wertimer Prize in Economics*, Hamilton College \
  #sub[Awarded to five students annually "who have excelled in the study of economics"]
]
#entry[2013][
  *Omicron Delta Epsilon*, Hamilton College \
  #sub[International Economics Honor Society]
]
#entry[2013][
  *Summer Internship Funding Award*, Hamilton College \
  #sub[Awarded to select students undertaking an internship in their field of interest]
]
#entry[2012][
  *Coleridge Prize*, Hamilton College \
  #sub[Awarded to one student annually "for possessing the outstanding qualities of leadership and character"]
]

= Publications

#ref[
  #me, Bochynska, A., Buttliere, B., Chung, K. L., Elsherif, M., Graham, C., Heiser, N. H., Loenneker, H. D., Sætrevik, B., Seetahul, Y., Sulik, J., Tomczak, K., Zygar-Hoffmann, C., & Neff, M. B. (2026). A call for greater transparency in piloting. _Advances in Methods and Practices in Psychological Science, 9_(4). #doi("10.1177/25152459261487966")
]
#ref[
  Oktar, K.,\* #me,\* Zollman, K., Kleiman-Weiner, M., & Young, L. (2026). Intuitive theories of truth. _Trends in Cognitive Sciences, 30_(3), 197–199. #doi("10.1016/j.tics.2026.01.001")
]
#ref[
  #me, Pope, M., Atkins, R. K., Jones-Jang, S. M., McKaughan, D. J., Phillips, J., & Young, L. (2023). The intentions of information sources can affect what information people think qualifies as true. _Scientific Reports, 13_, 7718. #doi("10.1038/s41598-023-34806-4")
]
#ref[
  Crum, A. J., Santoro, E., #me, Smith, E. N., Evans, K., Moraveji, N., Achor, S., & Salovey, P. (2023). Evaluation of the "rethink stress" mindset intervention: A metacognitive approach to changing mindsets. _Journal of Experimental Psychology: General, 152_(9), 2603–2622. #doi("10.1037/xge0001396")
]
#ref[
  #me & Young, L. (2021). Do knowledge representations facilitate learning under epistemic uncertainty? _Behavioral and Brain Sciences, 44_, e156. #doi("10.1017/S0140525X20001806")
]
#ref[
  Turnwald, B. P., #me, Samuels, N. A., Markus, H. R., & Crum, A. J. (2020). Nutritional analysis of foods and beverages depicted in top-grossing US movies, 1994–2018. _JAMA Internal Medicine, 181_(1), 61–70. #doi("10.1001/jamainternmed.2020.5421")
]
#ref[
  Crum, A. J., #me, & Smith, E. N. (2020). The stress mindset intervention. In A. J. Crum & G. M. Walton (Eds.), _Handbook of Wise Interventions: How Social-Psychological Insights Can Help Solve Problems_. Guilford Press.
]
#ref[
  Rivers, S. E., #me, Caruso, D., & Mayer, J. D. (2020). Emotional intelligence. In R. J. Sternberg (Ed.), _The Cambridge Handbook of Intelligence_. Cambridge University Press.
]
#text(size: 8.5pt, fill: muted)[\* Co-first authorship]

= Manuscripts in Submission

#ref[
  #me & Young, L. (revise and resubmit). How does the process of explaining affect one's beliefs? #doi("10.71240/lcyc.139469")
]
#ref[
  #me,\* Mazzuchi, T.,\* Kleiman-Weiner, M., & Young, L. (revise and resubmit). The role of consequence in evaluating claims as true or false. #doi("10.31234/osf.io/r8swt_v2")
]
#ref[
  Seetahul, Y., Elsherif, M., Zygar-Hoffmann, C., Wallrich, L., Silverstein, P., Sætrevik, B., Pit, I. L., Loenneker, H. D., Heiser, N. H., #me, Graham, C. J., Chou, Y. Y., Buttliere, B., Bochynska, A., Beitner, J., & Neff, M. B. (revise and resubmit). What pilot studies can (and cannot) do for validity in psychological research. #doi("10.31234/osf.io/t968e_v4")
]
#ref[
  Atkins, R., #me, Pope, M., McKaughan, D. J., & Young, L. (in submission). Two functions of listener truth-ascriptions.
]
#text(size: 8.5pt, fill: muted)[\* Co-first authorship]

= Manuscripts in Preparation

#ref[
  #me, Zheng, H., & Young, L. (in prep). People's descriptive and normative judgments about how other people and LLMs should label information as true and false.
]
#ref[
  Bochynska, A., Ambrosini, E., Bardeau, A., Beitner, J., Buttliere, B., Chou, Y., Chung, K. L., Di Pietro, I., Elsherif, M., Gourdon-Kanhukamwe, A., Graham, C., #me, Hergert, J., Loenneker, H. D., Montefinese, M., Pit, I., Pronizius, E., Quandt, J., Srivastava, R., Stoevenbelt, A., Viviani, G., Wallrich, L., Zygar-Hoffmann, C., & Neff, M. B. (in prep). A meta-assessment of piloting practices in psychological research.
]

= Replication Reports (#link("https://replications.clearerthinking.org/")[Transparent Replications])

#ref[
  #me & Metskas, A. (2026). Replication of a study from "'Stop the Count!'—How reporting partial election results fuels beliefs in election fraud" (_Psychological Science_ | Vaz et al., 2025). #link("https://replications.clearerthinking.org/2025psci36-8/")[Report]
]
#ref[
  #me & Metskas, A. (2025). Evaluation of a study from "Sharing of misinformation is habitual, not just lazy or biased" (_PNAS_ | Ceylan, Anderson, & Wood, 2023). #link("https://replications.clearerthinking.org/replication-2023pnas120-30/")[Report]
]
#ref[
  #me (2024). Replication of a study from "The illusion of moral decline" (_Nature_ | Mastroianni & Gilbert, 2023). #link("https://replications.clearerthinking.org/replication-2023nature618/")[Report]
]
#ref[
  #me & Metskas, A. (2024). Replication of a study from "The visual Mandela effect as evidence for shared and specific false memories across people" (_Psychological Science_ | Prasad & Bainbridge, 2022). #link("https://replications.clearerthinking.org/replication-2022psci33-12/")[Report]
]

= Conference Talks & Sessions

#entry[Jun 2024][
  #me, Neff, M. B., & Bochynska, A. "To pilot or not to pilot, that's not the question: Developing a template for transparent pilot study reporting" (Hackathon) \
  #sub[Society for the Improvement of Psychological Science (SIPS), Online]
]
#entry[Feb 2024][
  #me "Should our field share methods and results from pilot studies?" (Roundtable Unconference) \
  #sub[Society for Personality and Social Psychology (SPSP), San Diego, CA]
]
#entry[Jul 2023][
  #me, Pope, M., Atkins, R. K., McKaughan, D. J., Jones-Jang, S. M., Phillips, J., & Young, L. "Examining truth in the post-truth era: The intentions of information sources affect what people think qualifies as true" \
  #sub[National Defense Science and Engineering Graduate Fellowship Conference, San Antonio, TX]
]
#entry[Sep 2022][
  #me, Pope, M., Atkins, R. K., McKaughan, D. J., Jones-Jang, S. M., Phillips, J., & Young, L. "Evaluations of truth and trustworthiness" \
  #sub[Air Force Office of Scientific Research (AFOSR) Intent and Influence Program Review, Arlington, VA]
]
#entry[Jul 2022][
  #me, Phillips, J., Pope, M., Atkins, R., McKaughan, D., Jang, S., & Young, L. "Rarely pure and never simple: Truth evaluations and the role of intent" \
  #sub[Society for Philosophy and Psychology (SPP), Milan, Italy. Delivered by co-author J. Phillips.]
]

= Invited Talks

#entry[Jan 2026][
  "What counts as true?" \
  #sub[WyLab (PI: Jordan Wylie), Cornell University, Ithaca, NY]
]
#entry[Sep 2025][
  "A call for greater transparency in piloting" \
  #sub[Computational Minds and Machines Lab (PI: Max Kleiman-Weiner), University of Washington, Seattle, WA]
]
#entry[Dec 2024][
  "Reporting of pilot studies in psychology" \
  #sub[Phil Lab (PI: Jonathan Phillips), Dartmouth College, Hanover, NH]
]
#entry[Nov 2023][
  "Reporting of pilot studies in psychology" \
  #sub[Saxe Lab (PI: Rebecca Saxe), MIT, Cambridge, MA]
]
#entry[Jan 2023][
  "Leveraging philosophical and folk conceptions of truth to improve science communication practices" (with Pope, M., Atkins, R. K., McKaughan, D. J., Jones-Jang, S. M., & Young, L.) \
  #sub[Schiller Institute for Integrated Science and Society, Boston College, Chestnut Hill, MA]
]

= Poster Presentations

#entry[Feb 2026][
  A call for greater transparency in piloting \
  #sub[Society for Personality and Social Psychology (SPSP), Chicago, IL]
]
#entry[Feb 2026][
  The importance of reporting pilot studies: Revealing selection biases in study designs \
  #sub[SIPS Preconference at SPSP, Chicago, IL]
]
#entry[Feb 2025][
  Not reporting pilot studies can obscure the generalizability of psychological research \
  #sub[SPSP, Denver, CO]
]
#entry[Jul 2024][
  Does the process of explaining affect one's beliefs? \
  #sub[Cognitive Science Society (CogSci), Rotterdam, Netherlands]
]
#entry[Feb 2024][
  Does the process of explaining affect one's beliefs? \
  #sub[SPSP, San Diego, CA]
]
#entry[Jun 2023][
  Are people sensitive to the consequences of an assertion when evaluating its truth? \
  #sub[Society for Philosophy and Psychology (SPP), Pittsburgh, PA]
]
#entry[Feb 2023][
  Do the intentions of information sources sway people's truth classifications? \
  #sub[SPSP, Atlanta, GA]
]
#entry[Feb 2023][
  Truth evaluations are sensitive to intent, even when beliefs are controlled for \
  #sub[Misinformation and Belief Science Preconference at SPSP, Atlanta, GA]
]
#entry[Jun 2022][
  Rarely pure and never simple: Truth evaluations and the role of intent \
  #sub[Max Planck Summer Institute on Bounded Rationality, Berlin, Germany]
]
#entry[Feb 2022][
  Nothing but the truth? Exploring the role of intent in lay conceptions of truth \
  #sub[SPSP, San Francisco, CA]
]
#entry[Feb 2021][
  Explanation and belief: Does the process of explaining sway judgments of truth? \
  #sub[SPSP]
]
#entry[Feb 2020][
  Meta-mindsets: Towards a more agentic, ethical, and generalizable approach to mindset change \
  #sub[SPSP, New Orleans, LA]
]
#entry[May 2019][
  Intervening on meta-mindsets affects domain-specific mindsets \
  #sub[Association for Psychological Science (APS), Washington, DC]
]
#entry[Feb 2019][
  Meta-mindsets: A more agentic, ethical, and generalizable approach to mindset change \
  #sub[SPSP, Portland, OR]
]

= Metascience & Open Science Positions

#entry[2025 – 2026][
  *#link("https://www.psychologicalscience.org/publications/psychological_science/editorial-board")[REPEAT Network]*: Computational reproducibility checker \
  #sub[_Psychological Science_]
]
#entry[2024 – present][
  *#link("https://www.bitss.org/people/isaac-handley-miner/")[BITSS Catalyst]* \
  #sub[Berkeley Initiative for Transparency in the Social Sciences]
]
#entry[2023 – 2026][
  *#link("https://replications.clearerthinking.org/meet-the-team/")[Replication Scholar]* \
  #sub[Transparent Replications]
]

= Other Research & Work Experience

#entry[2017 – 2020][
  *Lab Manager*, Department of Psychology, Stanford University, Stanford, CA \
  #sub[Advisor: Alia Crum]
]
#entry[2016 – 2017][
  *Research Associate*, iThrive Games, Boston, MA
]
#entry[2014 – 2016][
  *Producer & Market Research Coordinator*, Glue Advertising, New York, NY
]
#entry[2013][
  *Research Assistant*, Center for Emotional Intelligence, Yale University, New Haven, CT
]

= Teaching & Mentorship

#entry[2021 – present][
  *Co-Founder & Mentor*, #link("https://www.bc.edu/content/bc-web/schools/mcas/departments/psychology/graduate/doctoral-program.html#mentorship")[Pre-Doctoral Mentorship Program], Boston College
]
#entry[2021 – 2022][
  *Honors Thesis Advisor*, Psychology Honors Thesis Project, Boston College \
  #sub[Student: Dan Ulanovsky]
]
#entry[2022][
  *Teaching Assistant*, #link("https://www.bc.edu/bc-web/academics/sites/prison-education-program.html")[Boston College Prison Education Program] \
  #sub[Massachusetts Correctional Institution – Shirley]
]
#entry[2021][
  *Teaching Assistant*, Psych 1110: Brain, Mind, & Behavior, Boston College \
  #sub[Instructor: Carolyn Knoepfler]
]
#entry[2020][
  *Teaching Assistant*, Psych 1110: Brain, Mind, & Behavior, Boston College \
  #sub[Instructor: Gene Heyman]
]
#entry[2018][
  *Teaching Assistant*, Psych 298: Health Psychology, Stanford University \
  #sub[Instructor: Alia Crum]
]
#entry[2018][
  *Mentor*, #link("https://oso.stanford.edu/programs/high-school-students")[Raising Interest in Science and Engineering Program], Stanford University
]
#entry[2012 – 2014][
  *Writing Tutor*, Writing Center, Hamilton College
]

= Methods & Statistics Training

#entry[2024][PSYCH 5595: Mathematics and Computation for Psychology & Neuroscience #sub[· Boston College (audited)]]
#entry[2023][BITSS Research Transparency and Reproducibility Training #sub[· UC Berkeley (workshop)]]
#entry[2022][Max Planck Summer Institute on Bounded Rationality #sub[· Max Planck Institute for Human Development]]
#entry[2022][PSYCH 6503: Methods for Handling Missing Data #sub[· Boston College]]
#entry[2022][MESA 8678: Multilevel Modeling #sub[· Boston College]]
#entry[2021][MESA 8864: Survey Methods in Educational and Social Research #sub[· Boston College]]
#entry[2021][PSYCH 5502: Multiple Regression #sub[· Boston College]]
#entry[2020][Computational Approaches to Social Cognition #sub[· Harvard University (workshop series)]]
#entry[2020][PSYCH 5501: Experimental Design and Statistics #sub[· Boston College]]
#entry[2020][PSYCH 6501: Graduate Programming Lab #sub[· Boston College]]
#entry[2019][STATS 211: Meta-Research Methods #sub[· Stanford University (audited)]]
#entry[2018][PSYCH 251: Experimental Methods #sub[· Stanford University (audited)]]
#entry[2013][ECON 400: Econometrics #sub[· Hamilton College]]
#entry[2012][ECON 265: Economic Statistics #sub[· Hamilton College]]
