#import "@preview/modern-cv:0.9.0": *

#import "./data.typ": *

#show: resume.with(
  author: (
    firstname: "",
    lastname: "Alex Rice",
    email: "alex.rice@ed.ac.uk",
    github: "alexarice",
    phone: "+447908246986",
    orcid: "0000-0002-2698-5122",
    website: "alexarice.github.io",
    // address: "3f1, 6 Drumdryan St, Edinburgh, EH3 9LA",
    positions: ( "Research Associate", )
  ),
  font: "Source Sans 3",
  header-font: "Source Sans 3",
  profile-picture: none,
  paper-size: "a4",
  show-footer: false,
  use-smallcaps: false,
  description: "CV",
)

#show heading.where(level: 1): it => {
  v(0.3cm)
  it
}

= Experience

#resume-entry(
  title: "Postdoctoral Researcher",
  location: "University of Edinburgh",
  date: "2024-2026",
  description: [Working in the Quantum Software Lab/LFCS group with Chris Heunen for 3 projects:
    - RoaRQ: "A unified noise-aware compiler stack for NISQ",
    - RubberDUQ: "Flexible Dynamic Universal Quantum programming",
    - IAA grant: "Orchestration of heterogeneous quantum computers" partnered with Fujitsu.
    #v(-0.5cm)
  ]
)

#resume-entry(
  title: "Internship",
  location: "Huawei Research Lab, Edinburgh",
  date: "2023",
  description: "Planned and developed an interactive visualisation tool for hierarchical hypergraphs."
)

#resume-entry(
  title: "Internship",
  location: "Quantinuum, Cambridge",
  date: "2022",
  description: "Added new features to a runtime for hybrid classical/quantum programs."
)

#resume-entry(
  title: "Organisation of Applied Category Theory",
  location: "University of Cambridge",
  date: "2021",
  description: [Co-organised a fully hybrid conference despite Covid-19 restrictions.]
)

= Education

#resume-entry(
  title: "PhD in Computer Science",
  location: "University of Cambridge",
  date: "2019 - 2025",
  description: "Defended thesis \"A type-theoretic approach to semistrict higher categories\" supervised by Jamie Vicary."
)

#resume-entry(
  title: "Masters in Mathematics and Computer Science",
  location: "University of Oxford",
  date: "2015 - 2019",
  description: "Awarded a first class degree."
)

#resume-entry(
  title: "Secondary Education",
  location: "The Judd School, Tonbridge",
  date: "2008 - 2015",
  description: "Achieved 4 A*s and 1 A at A-Level as well achieving S,S,S in Sixth Term Entrance Papers (STEP)."
)

= Papers

#let render-paper(data) = {
  let paper = data.paper.values().at(0)
  resume-entry(
    title: data.title,
    location: paper.published,
    date: paper.year,
    description: render-coauthors(data.coauthor)
  )
}

#render-paper(projects.phase)
#render-paper(projects.catt-sua)
#render-paper(projects.catt-su)
#render-paper(projects.lin-inf)

= Teaching

#resume-entry(
  title: [Lecturing],
  location: [University of Edinburgh],
  date: "2026",
  description: [Guest lecture for "Introduction to Quantum Programming and Semantics"]
)
#resume-entry(
  title: [Lecturing],
  location: [University of Cambridge],
  date: "2024",
  description: [Guest lecture for "Advanced Topics in Category Theory"]
)
#resume-entry(
  title: [Supervisions],
  location: [University of Cambridge],
  date: "2020-2023",
  description: [Supervised courses on prolog, probability, semantics, and object oriented programming]
)
#resume-entry(
  title: [Teaching Assistant],
  location: [University of Birmingham],
  date: "2019-2020",
  description: [Ran classes for "Advanced Functional Programming" and "Logic and Computation"]
)

= Selected Talks

#let render-talk(data, description) = {
  let talk = data.talk
  if type(talk) == array { talk = talk.at(0) }
  resume-entry(
    title: data.title,
    location: talk.where,
    date: talk.date.year(),
    description: description,
  )
}

#render-talk(projects.orchestras, [A monad for representing quantum computation as an effect in the presence of classical recursion])
#render-talk(projects.eso-typecheck, [Describing my experiences implementing a typechecker for an unusual dependently typed language])
#render-talk(projects.mlir-constraint, [A talk about ongoing work in xDSL to define operations using a constraint system.])

= Selected Software Contributions

#table(
  columns: (auto, auto),
  stroke: none,
  inset: 0pt,
  row-gutter: 1em,
  column-gutter: 3em,
  align: bottom,
  [== Inconspiquous],
  [Hybrid quantum-classical compiler toolkit, which featured in UnitaryHack 2025.],
  [== xDSL],
  [Core contributor (291 commits) to this MLIR-inspired compilation framework.],
  [== Catt interpreter],
  [Interpreter for $sans("Catt")_(sans("sua"))$, the language defined in my thesis.],
  [== Catt-agda],
  [Agda formalisation for metatheory of $sans("Catt")$ and its semistrict variants.],
  [== sd-visualiser],
  [A tool for visualising and interacting with hypergraphs.],
  [== Syllepsis in Agda],
  [Literate agda formalisation of the Syllepsis, following proof of Kavvos and Sojakova.]
)


= Awards
- #resume-item[*Hoare Prize*: For best overall performance in Part C (4#super[th] year exams)]
- #resume-item[*BT Prize*: Highest overall mark in Part B (2#super[nd] and 3#super[rd] year exams).]
// - #resume-item[*Casberd Scholarship*: Distinction (above 70%) in preliminary (1#super[st] year) exams.]
// - #resume-item[*Gibbs Prize* Awarded for performance in preliminary exams.]
// - #resume-item[*UKMT* Received various United Kingdom Mathematics Trust’s medals during
// secondary education.]

