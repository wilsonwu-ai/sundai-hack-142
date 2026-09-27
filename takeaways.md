# Takeaways from Sundai Hack 142

_Version 1, written on the morning of 27 September 2026 from the event materials and talks, before the 20:00 final presentations. Section 2 is filled in after the presentations._

[Back to README](README.md)

---

## 1. Seven lessons from the materials

**1. The verifier is the product.** Generating candidate ideas is now cheap. What makes AI-assisted research trustworthy is the checker: an AutoLab evaluator for a construction, the Lean kernel for a proof. The opening talk says it directly: more output only helps when you can identify what is correct and new, so the evaluator and review process are part of the research system itself.

**2. Say exactly what you proved.** A construction for n = 18 lines establishes n = 18. A long halting Turing machine certifies a lower bound, not the Busy Beaver value. Covering residue classes for Collatz does not settle Collatz. The competition rewards precise scope and penalizes inflated claims.

**3. Formalization is the gate, and a contribution in itself.** No formal artifact, no points. Formalizing known mathematics has its own leaderboard (M2), and a missing mathlib lemma can be the most useful thing a team produces all week.

**4. Difficulty has many dimensions.** The Ulam OPDP Atlas separates intrinsic difficulty, AI-relative difficulty, tractability, verification burden, formalization burden and tool leverage. Picking a target by fame is a mistake; pick by what your loop can actually verify.

**5. The scoring math rewards ambition with discipline.** Points scale with D squared but only linearly with progress, so an accepted half-result on a D = 800 problem (320 points) beats a full result on a D = 400 problem (160 points). Revisions replace earlier scores rather than stacking.

**6. The loop generalizes beyond math.** Propose, evaluate exactly, keep state, refine: this is the same architecture as coding agents with test suites and eval-driven AI products. Math simply makes the evaluator unusually strict, which is why it is a good place to learn the pattern.

**7. Humans keep authorship, and AI use is disclosed.** Any AI or tool is allowed; material use is disclosed; people remain the authors. Accepted results become a public, checkable record that the next team can build on.

## 2. Observed at the event

_To be added after the 20:00 final presentations: which hills teams chose, what loops they built, what worked, what broke, and anything the guest speakers said that changes the picture above._
