# Why We Moved Our Monolith to Services (And What It Cost Us)

Two years ago our platform team decided to split the monolith into services. The decision was driven by slow deploys and a growing team that kept stepping on each other's changes. This post explains what we did, why, and what we learned.

The first reason was deploy time. A full build and deploy of the monolith took 48 minutes by early 2024, and a failed deploy meant rolling back everything, including unrelated changes. Engineers had started batching their work to avoid the pipeline, which made each deploy riskier.

The second reason was ownership. With 40 engineers in one codebase, the question "who owns this module" had no good answer. Code reviews took days because nobody felt responsible for the shared parts.

The third reason was scaling. The search feature needed more memory than the rest of the app, and we were paying for that memory on every instance.

So we split along team lines: billing, search, notifications, and a core service that kept the rest. The migration took 14 months instead of the planned 6. The search service was the first to move and the easiest; billing was the last and took half the total time because of the database coupling nobody had documented.

The results were mixed. Deploys for the search service now take 4 minutes. Billing deploys take 20, because the service still shares a database with core. On-call load went up: we went from one pager rotation to four, and the first six months had twice as many incidents as the year before, mostly network timeouts between services that used to be function calls.

Would we do it again? Probably, but later and smaller. The search extraction paid for itself in three months. The billing extraction is still not clearly worth it.

In the end, the migration taught us that architecture decisions are really organizational decisions. The technical benefits were real but uneven, and the organizational cost of splitting a team's mental model was higher than any of us expected. Every team considering this path should weigh both sides carefully.
