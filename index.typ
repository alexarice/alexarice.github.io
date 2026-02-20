#import "./data.typ": *

#html.link(rel: "stylesheet", href: "style.css")

#title("Alex Rice")

#html.img(src: "rice.jpg", class: "photo", width: 200, title: "Photo Credit: George Kaye")

I am currently a postdoctoral research assistant working with #link("https://homepages.inf.ed.ac.uk/cheunen/")[Chris
Heunen] on methods of
representing quantum programs which makes them easier to optimise,
write, or reason about. I have previously worked with #link("https://grosser.science/")[Tobias
Grosser], and did my PhD at the University
of Cambridge under the supervision of #link("https://www.cl.cam.ac.uk/~jv258/")[Jamie
Vicary].

= Contact

#table(
  columns: (1fr, 1fr),
  [Email], [alex.rice at ed.ac.uk],
  [Office Address], [
    Office 3.05\
    Informatics Forum\
    University of Edinburgh\
    Edinburgh\
    EH8 9AB\
    United Kingdom
  ],
  [GitHub], [#link("https://github.com/alexarice")],
  [Orcid], [#link("https://orcid.org/0000-0002-2698-5122")[0000-0002-2698-5122]]
)

= About Me

I am generally interested at the moment in all things related to
programming languages and type systems, and tools for working with
these. In my PhD, I developed two variants of the type theory Catt, a
type theory which models globular weak infinity categories. These
variants had added definitional equality allowing them to model
semistrict infinity categories. During this I generated an interpreter
for these languages, and formalised a substantial portion of their
metatheory in Agda.

I also enjoy formalising things in Agda, programming in rust, and am a
user of Emacs and the NixOS Linux distribution. My other interests
include ice skating/ice hockey and playing cello in orchestras.


#let render-links(dict) = {
  [(]
  dict.pairs().map(v => {
    let (key, value) = v;
    link(value, key)
  }).join(", ")
  [)]
}

= Thesis
#for (title, data) in projects.pairs().filter(v => "thesis" in v.at(1)) [
  My thesis "#title", was submitted on #data.thesis.date.display("[day]th [month repr:long] [year]") #render-links(data.thesis.links)
]


= Papers

#for (name, data) in projects {
  let paper = data.at("paper", default: ())
  if type(paper) != array { paper = (paper,) }
  if paper.len() != 0 [
    - #name#for x in paper [#if "published" in x [, #x.published] #render-links(x.links)]
  ]
}

= Posters

#for (name, data) in projects {
  if "poster" in data [
    - #name, #data.poster.where #render-links(data.poster.links)
  ]
}

= Talks

#let talks = projects.pairs().map(v => {
  let t = v.at(1).at("talk", default: ());
  if type(t) != array { t = (t,) }
  t.map(x => (name: v.at(0), ..x))
}).flatten().sorted(key: x => x.date).rev()

#for t in talks [
  - #t.date.display("[month repr:long] [year]"): #t.name, #t.where #render-links(t.links)
]

= Posts

#let posts = (
  (
    title: [The Kavvos-Sojakova proof of Syllepsis in Agda],
    link: "posts/syllepsis.html",
    date: datetime(day: 11, month: 8, year: 2022)
  ),
  (
    title: [Linear inferences of size 7],
    link: "https://prooftheory.blog/2020/10/01/linear-inferences-of-size-7/",
    date: datetime(day: 9, month: 10, year: 2020)
  ),
  (
    title: [Strictly Associative Group Theory using Univalence],
    link: "https://prooftheory.blog/2020/10/01/linear-inferences-of-size-7/",
    date: datetime(day: 29, month: 05, year: 2020)
  ),
  (
    title: [Strictly Associative Group Theory],
    link: "posts/strict-group-theory.html",
    date: datetime(day: 26, month: 3, year: 2020)
  )
).sorted(key: x => x.date).rev()

#for post in posts {
  [- #link(post.link, post.title) - #post.date.display()]
}

= Teaching

- Guest lecturer for "Advanced Topics in Category Theory" (Spring 2024)
- Supervisor for "Prolog" (Spring 2021, Spring 2022, and Spring 2023)
- Supervisor for "Introduction to Probability" (Summer 2021)
- Supervisor for "Object Oriented Programming" (Autumn 2021)
- Supervisor for "Semantics of Programming Languages" (Autumn 2020)
- Teaching assistant for "Advanced Functional Programming" (Autumn 2019)
- Teaching assistant for "Logic and Computation" (Spring 2019)

= Events

I have attended the following events:

- #link("https://spli.scot/spls/meetings/2026/february/")[SPLS 11th February]
- #link("https://popl26.sigplan.org/")[POPL 2026], where I chaired the "Functional Programming" session.
- #link("https://popl26.sigplan.org/home/planqc-2026")[PlanQC 2026]
- #link("https://spli.scot/spls/meetings/2025/december/")[SPLS 3rd December]
- #link("https://sites.google.com/view/catniporg/meetings")[CATNIP 7th meeting]
- #link("https://msp.cis.strath.ac.uk/types2025/")[TYPES 2025]
- #link("https://spli.scot/spls/meetings/2025/june/")[SPLS 4th June]
- #link("https://llvm.swoogo.com/2025eurollvm/home")[EuroLLVM 2025]
- #link("https://spli.scot/spls/meetings/2024/november/")[SPLS 6th Nov]
- #link("https://sites.google.com/view/catniporg/meetings")[CATNIP 4th meeting]
- #link("https://lics.siglog.org/lics24/")[LICS 2024]
- #link("https://hott-uf.github.io/2023/")[HoTT/UF 2023]
- #link("https://cl.cam.ac.uk/syco/11")[SYCO 11]
- #link("https://cl.cam.ac.uk/syco/10")[SYCO 10]
- #link("https://www.floc2022.org/")[FLOC 2022] (#link("https://hott-uf.github.io/2022/")[HoTT/UF], #link("https://lics.siglog.org/lics22/")[LICS], #link("http://www.cs.tau.ac.il/~nachumd/FSCD/")[FSCD])
- #link("https://conferences.leeds.ac.uk/yamcats/meeting27/")[YAMCATS 27]
- #link("https://www.cs.nott.ac.uk/~psznk/events/mgs22.html")[Midlands graduate school (MGS) 2022]
- #link("https://conferences.cirm-math.fr/2689.html")[Logic and Higher Structures]
- #link("https://fscd2021.dc.uba.ar/")[FSCD 2021]
- #link("https://www.cl.cam.ac.uk/events/act2021/")[ACT 2021], which I helped organise.
- #link("http://web.science.mq.edu.au/groups/coact/seminar/CaCS2021/")[Categories and Companions Symposium 2021]
- #link("https://cl.cam.ac.uk/syco/6/")[SYCO 6]
- #link("https://cl.cam.ac.uk/syco/3/")[SYCO 3]
- #link("https://cl.cam.ac.uk/syco/2/")[SYCO 2]
- MGS Christmas lectures in Sheffield 2019
