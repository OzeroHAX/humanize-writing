# Discourse-Level Editing: How Humans Build Text

Word lists catch the surface. Experienced readers detect AI prose even after every buzzword is gone (Russell, Karpinska & Iyyer, ACL 2025: heavy ChatGPT users misclassified 1 of 300 texts, citing formality, originality, and specificity, not vocabulary). What survives paraphrase is structure: how information is ordered, how paragraphs connect, how claims are backed, how sentences vary, and how the piece ends. Fix these before, and more than, the words.

Every rule below says what to check and what to do. None of them licenses adding material. If a fix needs a fact the source doesn't have, the fix is to cut or to flag for the author.

## Contents

- [What the research measures](#what-the-research-measures)
- [1. Skeleton: paragraph order and hinges](#1-skeleton-paragraph-order-and-hinges)
- [2. Endings and over-completion](#2-endings-and-over-completion)
- [3. Claims, evidence, and portability](#3-claims-evidence-and-portability)
- [4. Agency and narrator distance](#4-agency-and-narrator-distance)
- [5. Syntax: the measured tells](#5-syntax-the-measured-tells)
- [6. Rhythm as variance, not template](#6-rhythm-as-variance-not-template)
- [7. Stance, hedging, and affect](#7-stance-hedging-and-affect)
- [8. Verification](#8-verification)

---

## What the research measures

Findings an editor can act on. Direction only; no paper supports a numeric threshold for prose editing.

| Finding | Source | Editing consequence |
|-|-|-|
| Instruction-tuned LLMs use present-participial clauses 2-5x more than humans, nominalizations 1.5-2x, "that"-clause subjects 2.6x, and agentless passives at about half the human rate. Base models are near-human; tuning causes the drift. | Reinhart et al., PNAS 2025 | Cut "-ing" tails, turn nominalizations into verbs, and stop treating passive voice as a tell. |
| Human sentence-length distribution is more scattered; LLM constituents are longer and dependency distances less optimized. Average sentence length is the single strongest human/LLM discriminator in one 412-author study. | Muñoz-Ortiz et al. 2024; Cao et al. 2026 | Widen the variance. Don't target a mean, and don't install a template (three medium, one short). |
| LLM text drifts less: topic, stance, and emotion stay flat across the piece. Humans drift. | Cao et al. 2026 | Keep the author's mood shifts, digressions, and changes of register. Don't flatten them for consistency. |
| LLM text is more positive; human text has more fear, disgust, irritation. | Muñoz-Ortiz 2024; EmoXpt 2025 | Preserve negative affect the author expressed. Don't upgrade "annoying" to "challenging." |
| Students used more discourse markers and more hedges than ChatGPT; ChatGPT achieved cohesion by adding paragraphs. | Herbold et al. 2023 | Hedges and modals in argument are a human feature. Connectives per se are not the tell; paragraph-initial "Moreover/Furthermore" as a cohesion substitute is. |
| Lexical diversity is NOT a human marker. Newer models score higher than humans on it. | Kendro et al. 2025; RuATD 2022 (CTTR 3.01 machine vs 2.76 human) | Never "enrich vocabulary" to humanize. Synonym cycling is a machine trait. Repeat the clearest word. |
| Readers judge text human by first person, contractions, and family topics, and models can fake all three; detection is at chance. | Jakesch, Hancock & Naaman, PNAS 2023 | Surface humanity cues are not authenticity. Don't add them. |
| Humans state the moral of a story outright 52% of the time; AI 77%. | corpus study cited in ilyautov/humanizer-ru #59 | Cut the sentence that tells the reader what the events just showed. |
| Humans keep information rate roughly constant and smooth surprisal peaks (Uniform Information Density). | Levy & Jaeger 2007; Coupé et al. 2019 | Human prose alternates dense and light sentences. A sequence of equally loaded sentences reads generated. |
| Coherent discourse keeps a backward-looking center and prefers continuing a topic over shifting it. | Grosz, Joshi & Weinstein 1995 | Sentence N's subject should be recoverable from sentence N-1. Chains, not restarts. |

---

## 1. Skeleton: paragraph order and hinges

**Outline test.** For any text of five or more paragraphs, list the first sentence of every paragraph and read the list alone. If it reads as a tidy summary (what happened -> why -> result -> what it means), the skeleton is machine-made. Human outlines have holes: a paragraph that answers an objection nobody stated yet, a jump, a sentence that makes no sense without context.

*Fix:* break the line in one place. Move a block so a question lands before its setup. Turn one paragraph into an objection to the text's own claim (only if the source contains the counter-material). Cut the reflective tail. Don't break it in three places; one seam is human, three is a new template.

**Reshuffle immunity.** Can two body paragraphs swap places without anything breaking? Then the text is a list of points, not an argument. Fix only with relations the source supports: "because," "which is why," "the exception is."

**Hinge rule.** Every paragraph opener should do one of four things: pick up a noun or claim from the end of the previous paragraph; refer back with a pronoun ("That risk matters only when..."); state a logical relation (But / So / Which means); or introduce a contrast or exception. Deleting "Furthermore" and leaving nothing is not a fix. The model then starts a new topic with no link, which reads just as generated.

**Treadmill test.** Per paragraph, name the one fact, claim, or turn it adds. A paragraph that adds none goes. Typical LLM drafts lose 40-60% of length here with no loss of information.

**Given before new.** In neutral prose, known information opens the sentence and new information closes it. Every sentence opening with the news is either deliberate emphasis or a calque. In Russian this is grammar (see ru-ai-tells.md, "Порядок слов и рема"); in English it shows up as every sentence starting with a fresh subject noun.

**Uniform front-loading is itself a tell.** "Point first, then detail, then background" in every paragraph is a template. Let some paragraphs build to the point.

---

## 2. Endings and over-completion

**Moral deletion.** If the last one or two sentences interpret what the text already showed ("This taught her the main thing: ...", "What this shows is..."), delete them. End on the last concrete fact, action, or quote.

**Don't improve the kicker.** A fake-profound closer is deleted, not rewritten into a better metaphor. If closure is needed, use the flattest available: the next step, or the last number.

**Symmetry.** A conclusion that mirrors the introduction, three benefits followed by three risks, a balanced "the good news / the challenge / the inspiring close" -- all restatement. Keep the side the source actually argued.

**Seams in narrative.** Human stories have a branch that led nowhere, a coincidence, a time jump. LLM stories run causally seamless and strictly chronological. Don't add seams; but if the source has a digression the previous editor smoothed out, put it back.

**List macro-burstiness.** Read only the first line of each list item. If every item follows one skeleton (name: two-line explanation: example), break it: let items open differently, make one short and one long, or turn the list into a paragraph.

---

## 3. Claims, evidence, and portability

**Portability test.** If a sentence could move unchanged to another company, product, person, or country, it's filler, whatever words it uses. Cut it, or replace it with a fact, mechanism, or consequence specific to this subject that the source provides. This catches water that contains no marker words at all.

**Claim-evidence discipline.** For each empirical claim: is it backed by a number, example, or citation in the text? Does the verb match the evidence? "Proves" needs a study; "suggests" needs a data point; "we saw" needs an observation. Unbacked claim: soften the verb or cut the claim. Never pick a verb stronger than the evidence, and never supply the evidence yourself.

**Staccato contrast triage.** Short punchy contrasts ("Not X. Y.") come in three kinds. *Earned*: both sides were evidenced earlier. *Compressed*: one side is evidenced, the other leaps. *Decorative*: neither. Keep earned. For compressed and decorative, replace the rhythm with the relation: "because," "although," "when," "where." If the relation isn't in the source, cut the contrast.

**Cash-out test for images.** In explanatory text, ask "what physically happens?" for every vivid verb or metaphor ("the pipeline chokes," "trust erodes"). No answer: the image is hollow, rewrite to the mechanism or delete. Wrong answer: false precision, fix the mechanism. Exempt fiction and memoir.

**Consequence-free "this matters."** "This matters because" is fine when a concrete consequence follows ("retries can charge the customer twice"). It's a tell when what follows is a restatement of importance.

**Self-labeled virtues.** "Here's an honest list," "no hype," "practical advice": the text names a quality instead of showing it. Delete the label.

---

## 4. Agency and narrator distance

**False agency.** An abstraction makes a consequential choice and no human is in the sentence: "The decision emerged," "the strategy prioritized," "a complaint becomes a fix." Name the actor if the source does; otherwise keep the abstraction but drop the intention verb. Idioms like "the data shows" are fine.

**Transformation crutch.** "The concern turns into panic," "the risk becomes real," "X evolves into Y" with no stated change. Ask what changed: an action, a threshold, a consequence. If the source doesn't say, cut the transformation.

**Narrator from a distance.** "Nobody designed this," "People tend to," "This happens because" -- a lecturer floating above the scene. If the author had a concrete case, use it. If not, keep the generalization but check the portability test.

**Hollow deixis.** Human text anchors: a date, a place, "our prod," "last quarter," "the second time it broke." A piece with no anchor to a specific time, place, or person reads generated even when clean. Don't invent anchors; do keep every one the source has, and don't generalize them away ("in March" must not become "recently").

---

## 5. Syntax: the measured tells

These are the patterns Reinhart et al. found with large effect sizes. They are more diagnostic than any word list.

**Trailing present-participial clauses.** "..., highlighting the need for...", "..., allowing teams to...", "..., creating a seamless experience." Cut the clause, or make it a finite sentence if the source supports the claim. One per page is human; one per paragraph is not.

**Nominalizations.** "the implementation of," "the utilization of," "provides an improvement in" -> the verb: "implementing," "using," "improves." This also dissolves preposition chains.

**"That"-clause subjects.** "That the system failed is notable" -> "The system failed."

**Phrasal coordination stacks.** "X and Y, A and B, with P and Q" -- noun pairs piled up. Humans coordinate clauses ("it failed and we rolled back") more, noun phrases less.

**Passive is not a tell.** LLMs use agentless passives at half the human rate. Don't convert passives to actives mechanically; do so only when the actor matters and the source names it.

**Verb repetition across adjacent sentences.** Repetition penalties act on nouns (hence synonym cycling) but not on verbs in parallel frames: "X offers... Y offers... Z offers..." Vary the verb or merge the sentences. Deliberate anaphora is exempt.

---

## 6. Rhythm as variance, not template

Rhythm rules in most humanizers produce a second template: three medium sentences, one short, repeat. That is also detectable.

**Variance, not mean.** The human signal is scatter: some 4-word sentences, some 40-word ones, in no pattern. Look at the piece's length distribution. If every sentence is 15-25 words, split a few and merge a few. If every paragraph has a short kicker, remove some kickers.

**Hard splices.** Humans end a thought and start the next with no connective 20-30% of the time; the reader restores the link. If every sentence begins with a connective or a reference to the previous one, cut some connectives at sentence level (the paragraph-level hinge rule still applies).

**Density cardiogram.** Human prose alternates: a dense sentence with three facts, a light one, an aside, dense again. A run of equally loaded sentences reads generated. Don't add asides; do keep the author's, and don't pack every sentence to the same weight when rewriting.

**Parcellation must change meaning.** A stand-alone fragment stays only if removing it changes the reading: a correction, an afterthought, a contrast. Rows of one-word synonyms with periods ("Fast. Clean. Simple.") go.

**Over-correction is a fingerprint.** A text with every pattern inverted (no connectives, all short sentences, zero em dashes, forced fragments) reads as humanizer output, not human output. Reviewers who use LLMs daily recognize it.

---

## 7. Stance, hedging, and affect

**Hedges are human in argument.** "I think," "probably," "in our case" are more frequent in human argumentative writing than in LLM output. Keep them. The AI hedging tell is different: ceremonial hedges ("it's important to note," "while there are certainly challenges") and modal padding ("may be useful," "is designed to," "can help") at more than about one per hundred words outside real forecasts.

**Affect drift.** Humans get irritated, doubtful, amused within one piece. Keep the author's shifts. Don't harmonize tone.

**Negative affect stays.** If the author wrote "this was miserable," don't make it "this was challenging."

**Interactional metadiscourse.** Questions left open, asides, direct address to the reader, "as I said above" back-references: LLM text has fewer of all of these. Preserve every one the source has. Don't add them (adding voice in a paired blind test produced foreign intonation in 7 of 25 cases).

---

## 8. Verification

**Provenance check.** For every sentence in the rewrite, can you point to its source in the original or in the user's instructions? Anything else comes out. Connective tissue counts: an invented cause, duration, or reaction is an invention.

**Modality check.** "If" is not "only if." "Often" is not "always." "We tested" is not "we shipped." "Better for this workflow" is not "best."

**Positional checklist.** Paragraph lengths differ. Emphasis clusters where the argument needs it, not evenly. Not every list has three items. The rewrite is not longer than the original. No phrase copied from this skill's examples.

**Blind second read (when a subagent is available).** Give a fresh agent only the original, the rewrite, and this skill, with no change log; the editor's intentions make a reviewer agreeable. Check damage first (invention, meaning drift, hollowing: a cut of more than half usually lost content, changed terms), then residue (structural templates, portability, over-correction). Every note needs a quote. "Still sounds like AI" without a named pattern is discarded.

**Two-pass ceiling.** Stop when remaining changes give the reader no clear benefit. A third pass smooths content for a score.
