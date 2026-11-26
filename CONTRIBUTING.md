# Contributing to Deep Learning Playground

How we work this semester. Short on purpose, so read it once.

## Work from an issue
- One issue, one branch, one PR. Branch off `nextjs` (`./create-branch.sh <issue-number>-<short-name>`).
- Put `Closes #N` in the PR description so the issue closes when it merges.
- Never commit to `nextjs` directly.

## Stay in your lane
- Only change the folders your issue lists. Need something outside them? Ask on the issue first.
- `openapi/` is the contract everyone codes against. It changes only through a PR that Michael (michaeldo07) reviews.
- PRs that touch `training/` get reviewed by Zack (zackary-masri).

## Before you open a PR
- Run the check and paste the result in the PR:
  `(cd frontend && pnpm lint && pnpm test) && (cd training && poetry run pytest tests)`
- If you used an AI agent, say in two lines what the agent did and what you checked yourself.

## Never commit
- Secrets, API keys, `.env` files, personal notes, or AI agent files (`AGENTS.md`, `CLAUDE.md` and similar).
- If you commit a secret by accident, tell Alessio right away. Deleting it in a later commit does not remove it from history.

## Weekly update
- Every Sunday by 8pm ET, reply in the week's update thread in Slack with three lines: Done (with PR or issue links), Next, Need help (or "nothing").

## When you're stuck
- Stuck for 2 days? Say so on the issue. That's normal and it's how we keep the Dec 17 demo on track.

## Merge small and often
- Small PRs get reviewed faster. Open a draft PR early if you want feedback.
