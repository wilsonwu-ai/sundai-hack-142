# OpenMath 2026 rules on one page

_A condensed reading of the official **Competition and Judging Handbook** (Open Problems Hack at MIT, September 2026). The [handbook PDF](https://rsihouse.ai/openmath/handbook.pdf) is authoritative wherever this summary differs, and scoring details, checker instructions and the submission workspace are published by the organizers at [rsihouse.ai/openmath](https://rsihouse.ai/openmath)._

[Back to README](../README.md)

---

## The one rule that matters most

**Only formalized results count.** Every accepted claim must pass a pinned, approved formal checker **and** mathematical review of its exact statement, novelty, scope and attribution. Informal proofs, numerical patterns and model confidence do not score. There is no mandatory oral defense.

## Calendar

| When | What |
|---|---|
| Sun 27 Sep, noon Eastern | Hybrid opening at MIT CSAIL with remote access: onboarding, team formation, tool and submission demos, talks. Also the common "status freeze" baseline for what counts as open. |
| Mon 28 Sep to Fri 2 Oct | Research, rolling problem admission, submissions, review. Daily checkpoints and office hours (no score). |
| Before 00:00 EDT Sat 3 Oct (9 p.m. PDT Fri 2 Oct) | All score-bearing mathematics and formal artifacts complete and submitted. |
| After Friday | Reviews of finished artifacts, reruns, deduplication, appeals. Not a second work period. |
| About 1 to 2 weeks later | Results ceremony (provisional). |

Remote participation and late joining are allowed under the same Friday deadline.

## Who can enter

| Class | Who |
|---|---|
| Individual | One person, independent of a company |
| Team | Two to four people, independent of a company |
| Company | One to four people representing a company or using material company resources |

Each person belongs to one active entrant. Organizer-allocated sponsor credits and public tools do not by themselves make an entry a company entry. Material private compute, models or funding must be disclosed.

## The four ways to score

| Mode | Contribution | Treatment |
|---|---|---|
| **M1** | Solutions or formalized advances on the frozen curated focus set | Original-problem score with a 1.1x focus bonus |
| **M2** | New, faithful, useful, reusable formalizations of known mathematics | Separate leaderboard by number of accepted formalization families; not counted as open problems solved |
| **M3A** | Solutions or formalized advances on other eligible original open problems | Original-problem score, no focus bonus |
| **M3B** | Solutions or formalized advances on nontrivial, parent-linked variations | Own difficulty, 1/2 modality multiplier |

Each contribution has one primary mode. Proposing a problem alone earns nothing.

## Scoring

For an accepted problem family P:

```text
F = b x m x p x D^2 / 1000
```

| Symbol | Meaning |
|---|---|
| **D** | Published OPDP difficulty on the 0 to 1000 scale, frozen, from the Ulam OPDP Difficulty Atlas (new targets get three independent assessments, median used) |
| **p** | Reviewed progress coefficient, 0 to 1 |
| **m** | 1 for M1/M3A, 1/2 for M3B |
| **b** | 1.1 for the M1 focus set, 1 otherwise, plus any published jury bonus for unusually consequential results |

Handbook examples for complete, non-focus results: D = 400 gives 160 points, 600 gives 360, 800 gives 640, 900 gives 810, 1000 gives 1000. A D = 800 result accepted at p = 0.5 earns 320, and the same as an M3B variation earns 160. Improving a family from p = 0.5 to p = 1 ends at 640, not 960: revisions replace, they do not stack.

Two rankings per class: **S** (total accepted output, sum of F over distinct families) and **A** (biggest single accomplishment). Distinct families add with no cap. Ties break on complete original solutions, then their count, then partial advances, then the earlier server timestamp.

## Partial credit bands

| Band | p | Accepted contribution |
|---|---|---|
| P0 | 0 | No eligible formalized advance |
| P1 | .01 to .05 | Narrow certified computation, obstruction, negative theorem or reusable fact |
| P2 | .05 to .15 | Nontrivial lemma, reduction, reformulation, finite classification, or improvement short of the central obstacle |
| P3 | .15 to .35 | Meaningful infinite family, special case, bound or structural advance removing a recognized obstacle |
| P4 | .35 to .60 | Major cases or components carrying a substantial part of the logical burden |
| P5 | .60 to .85 | Most of the target resolved; remainder explicit, localized and materially smaller |
| P6 | .85 to .95 | Near-complete accepted result with a genuine nontrivial remainder |
| Full | 1 | Exact registered target completely proved or validly refuted |

No coefficient strictly between .95 and 1. Judges start at the low end of a band unless a written rationale supports more. A claimed full solution that fails acceptance earns credit only for separately accepted subclaims.

Special cases worth knowing before you pick a target:

- **Counterexamples** earn full credit only if they formally satisfy the registered hypotheses and refute the actual universal claim.
- **Computation**: exhaustive finite results need a formal certificate or verified procedure, often P1 to P3. Sampling never proves an uncovered infinite statement.
- **Negative results** about one method usually land in P1 or low P2.
- **Known mathematics** earns no open-problem credit; new formalizations of it go to M2.

## Tools and submission

- Any AI system, proof assistant, computer algebra system, custom agent or harness, or human-only reasoning is allowed.
- Disclose material model and tool names and versions, their roles, external data, approximate compute and funding sources, and what humans checked independently. Model agreement or an impressive transcript is not proof.
- Every score-bearing artifact needs the exact formal statement, pinned prover and library versions, reproducible build instructions, declared axioms and dependencies. **No proof holes or placeholders.**
- Submit through AutoLab: each entrant registers an AutoLab account or workspace. Each claim needs its submission ID, Hill version or tree hash, Climb link, immutable final commit and final evaluator report.
- **A passing Hill is necessary but is not itself a mathematical proof.** Formal checking, statement fidelity, literature status and attribution remain separate gates.

## Minimum submission packet

1. **Identity and target**: IDs, modality, roster and class, authors and contributions, source, exact claim, claimed completeness.
2. **Artifact and proof**: AutoLab owner, Hill hash, Climb, final commit and report, formal source, reproduction commands, statement-correspondence note, axioms, trust dependencies, code or certificates.
3. **Provenance**: what existed before the event versus what is new, overlaps, AI and tool disclosures, outside help, conflicts.
4. **Publication authority**: permission to release under the competition terms.

Incomplete packets during the week may get a cure window of up to 12 hours. After the cutoff, only administrative fixes are allowed, never new mathematics.

## Authorship

Human contributors receive full scholarly authorship for their new work regardless of AI use. AI systems, providers, sponsors and organizers acquire no authorship. Accepted scoring artifacts become public.
