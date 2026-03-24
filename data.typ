#let render-coauthors(coauthors) = {
  if coauthors.len() == 0 { return }
  [ with ]
  if coauthors.len() > 1 { coauthors.push("and " + coauthors.pop()) }
  if coauthors.len() <= 2 {
    coauthors.join(" ")
  } else {
    coauthors.join(", ")
  }
}

#let projects = (
  thesis: (
    title: "A type-theoretic approach to semistrict higher categories",
    thesis: (
      date: datetime(day: 18, month: 4, year: 2024),
      links: (
        pdf: "pub/thesis.pdf",
        arxiv: "https://arxiv.org/abs/2502.17068"
      )
    ),
  ),
  orchestras: (
    title: "Quantum Orchestras",
    talk: (
      where: "Birmingham theory group seminar",
      date: datetime(day: 13, month: 2, year: 2026),
      links: (
        slides: "talks/brum-talk.pdf"
      )
    )
  ),
  phase: (
    title: "Quantum Circuits are Just a Phase",
    coauthor: (
      "Chris Heunen",
      "Christopher McNally",
      "Louis Lemonnier"
    ),
    paper: (
      conference: (
        published: "POPL",
        year: "2026",
        links: (
          pdf: "pub/phase.pdf",
          arxiv: "https://arxiv.org/abs/2507.11676",
          doi: "https://dl.acm.org/doi/10.1145/3776731",
        )
      )
    ),
    talk: (
      (
        where: "POPL",
        date: datetime(day: 16, month: 1, year: 2026),
        links: (
          slides: "talks/phase.pdf",
          recording: "https://www.youtube.com/watch?v=7y9QGVMHp48",
        )
      ),
      (
        where: "Unitary Foundation Quantum Wednesday",
        date: datetime(day: 25, month: 2, year: 2026),
        links: (
          slides: "talks/phase-uf.pdf",
          recording: "https://www.youtube.com/watch?v=2CyW4uWU9CE"
        )
      )
    ),
  ),
  catt-sua: (
    title: "A Syntax for Strictly Associative and Unital ∞-Categories",
    coauthor: (
      "Eric Finster",
      "Jamie Vicary",
    ),
    paper: (
      conference: (
        published: "LICS",
        year: "2024",
        links: (
          pdf: "pub/sua.pdf",
          arxiv: "https://arxiv.org/abs/2302.05303",
          doi: "https://dl.acm.org/doi/10.1145/3661814.3662102",
        )
      )
    ),
    talk: (
      where: "LICS",
      date: datetime(day: 8, month: 7, year: 2024),
      links: (
        slides: "talk/sua.pdf"
      )
    )
  ),
  catt-su: (
    title: "A Type Theory for Strictly Unital ∞-Categories",
    coauthor: (
      "Eric Finster",
      "David Reutter",
      "Jamie Vicary",
    ),
    paper: (
      conference: (
        published: "LICS",
        year: "2022",
        links: (
          pdf: "pub/strict-units.pdf",
          arxiv: "https://arxiv.org/abs/2007.08307",
          doi: "https://dl.acm.org/doi/10.1145/3531130.3533363"
        )
      )
    ),
    talk: (
      where: "LICS",
      date: datetime(day: 2, month: 8, year: 2022),
      links: (
        slides: "talks/strict-units.pdf"
      )
    )
  ),
  catt-sa: (
    title: "A Type Theory for Strictly Associative Infinity Categories",
    coauthor: (
      "Eric Finster",
      "Jamie Vicary",
    ),
    paper: (
      preprint: (
        links: (
          pdf: "pub/strict-assoc.pdf",
          arxiv: "https://arxiv.org/abs/2109.01513"
        )
      )
    ),
    talk: (
      where: "SYCO 10",
      date: datetime(day: 19, month: 12, year: 2022),
      links: (
        slides: "talks/syco10.pdf"
      )
    )
  ),
  lin-inf: (
    title: "New minimal linear inferences in Boolean logic independent of switch and medial",
    coauthor: ("Anupam Das", ),
    paper: (
      journal: (
        published: "LMCS",
        year: "2023",
        links: (
          pdf: "pub/lin-inf-extended.pdf",
          arxiv: "https://arxiv.org/abs/2111.05209",
          lmcs: "https://lmcs.episciences.org/11337"
        )
      ),
      conference: (
        published: "FSCD",
        year: "2021",
        links: (
          pdf: "pub/linear-inf.pdf",
          link: "https://drops.dagstuhl.de/opus/volltexte/2021/14252/"
        )
      )
    ),
    talk: (
      where: "FSCD",
      date: datetime(day: 22, month: 7, year: 2021),
      links: (
        slides: "talks/linear-inf-talk.pdf",
        recording: "https://www.youtube.com/watch?v=rvwuMWTgSl4"
      )
    )
  ),
  coinductive-invert: (
    title: "Coinductive Invertibility in Higher Categories",
    paper: (
      preprint: (
        links: (
          pdf: "pub/inverses.pdf",
          arxiv: "https://arxiv.org/abs/2008.10307",
          formalisation: "/Inverses",
          github: "https://github.com/alexarice/Inverses"
        )
      )
    ),
    talk: (
      where: "Birmingham theory group lab lunch",
      date: datetime(day: 19, month: 3, year: 2020),
      links: (
        slides: "talks/inverses.pdf"
      )
    )
  ),
  mutability: (
    title: "Mutability in Quantum Programming",
    poster: (
      where: "PlanQC 2026",
      links: (
        poster: "poster/mutable.pdf",
        abstract: "pub/mutable.pdf"
      )
    ),
  ),
  eso-typecheck: (
    title: "Implementing a Typechecker for an Esoteric Language",
    talk: (
      where: "TYPES",
      date: datetime(day: 12, month: 06, year: 2025),
      links: (
        slides: "talks/catt-nbe.pdf"
      )
    )
  ),
  sd-vis: (
    title: "sd-visualiser: Interactive graph visualisation for SSA-based IRs",
    talk: (
      where: "EuroLLVM",
      date: datetime(day: 16, month: 4, year: 2025),
      links: (
        slides: "talks/sd-talk.pdf"
      )
    )
  ),
  mlir-constraint: (
    title: "Defining and verifying MLIR operation with constraints",
    talk: (
      where: "EuroLLVM",
      date: datetime(day: 16, month: 4, year: 2025),
      links: (
        slides: "talks/mlir-ops.pdf"
      )
    )
  ),
  groups-uf: (
    title: "Strictly Associative Group Theory using Univalence",
    talk: (
      where: "HoTT/UF",
      date: datetime(day: 22, month: 4, year: 2023),
      links: (
        slides: "talks/sgtuf.pdf"
      )
    )
  ),
  yamcats: (
    title: "Type theoretic approaches to semistrict higher categories",
    talk: (
      where: "YAMCATS 27",
      date: datetime(day: 12, month: 5, year: 2022),
      links: (
        slides: "talks/semistrict.pdf"
      )
    )
  ),
  biased: (
    title: "Biased composition in infinity categories",
    talk: (
      (
        where: "Categories and Companions Symposium",
        date: datetime(day: 11, month: 6, year: 2021),
        links: (
          slides: "talks/inf-category-equiv-talk.pdf",
          recording: "https://www.youtube.com/watch?v=ngApRoAi7UY"
        )
      ),
      (
        where: "Birmingham theory group lab lunch",
        date: datetime(day: 25, month: 9, year: 2020),
        links: (:)
      )
    )
  )
)
