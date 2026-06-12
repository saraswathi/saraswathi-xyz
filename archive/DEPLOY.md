# Deploying saraswathi.xyz

One folder, zero monthly cost. ~30 minutes start to finish.

## 1. Rescue the images (do this first — 5 min)
These are the only assets that die when Framer is cancelled. From inside this folder, run:

    bash rescue-images.sh

This downloads all 24 case-study images from Framer's CDN into `assets/images/`.
Open `index.html` in a browser afterward and confirm images appear.

(Videos and your CV are already safe — they live on your Cloudflare R2 bucket, not Framer.)

## 2. Deploy to Cloudflare Pages (10 min)
You already use Cloudflare (your R2 bucket lives there), so:

1. Cloudflare dashboard → Workers & Pages → Create → Pages → "Upload assets".
2. Drag this entire folder in. Name the project `saraswathi`.
3. It deploys to `saraswathi.pages.dev` — click around and test everything.

(Prefer git? Push this folder to a GitHub repo and connect it instead — every push then auto-deploys.)

## 3. Point the domain (5 min)
1. In the Pages project → Custom domains → add `saraswathi.xyz` (and `www.saraswathi.xyz`).
2. If the domain's DNS is at Cloudflare, it wires itself; otherwise follow the CNAME prompt.

## 4. Redirect the old domains (5 min)
Keep every old link alive:
- `bettertomorro.ws` → 301 to `https://saraswathi.xyz` (Cloudflare → Bulk Redirects, or a Page Rule).
- `srswthi.com` → leave pointed at the Framer art site **for now** (the /art/ page links to it).
  When art pages migrate in phase two, redirect it to `https://saraswathi.xyz/art/`.

## 5. Update the world
- LinkedIn headline + website field → saraswathi.xyz
- CV header → saraswathi.xyz (regenerate the PDF when convenient)
- Email signature, socials.

## 6. Cancel Framer
Once steps 1–4 are verified: cancel the bettertomorro.ws Framer site.
Keep the srswthi.com Framer site until the art migration (phase two), then cancel it too.

## Site map
    /                  front door (recruiter-first)
    /work/             7 case studies (lobby4me, hypha, repair, circles, chase, memri, squarespace)
    /lab/              live experiments (Final Trade, Sunbows, myx, olive, MetaDesigner)
    /art/              art practice index (links out to srswthi.com until phase two)
    /about/            the full identity
    /timeline/         the whole practice, 2011–2026 (the easter egg)
    /assets/           styles.css + images/

## Editing later
Every page is plain HTML with one shared stylesheet (`assets/styles.css`).
Edit a file, re-upload (or git push). The master database spreadsheet remains the
source of truth for the timeline's data — ask Claude to regenerate any page from it.
