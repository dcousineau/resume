# This is my resume!

You can find a *mostly* recently compiled version of my resume in the [releases](https://github.com/dcousineau/resume/releases).

## Building the Source

#### Mac Instructions

* Install LaTeX. Two options:
  * **Minimal (~100MB):** `brew install --cask basictex` then `sudo tlmgr update --self && sudo tlmgr install koma-script geometry setspace xifthen enumitem stackengine hyperref titlesec marvosym soul makecell lastpage`
  * **Full (~4GB, no extra setup):** `brew install --cask mactex-no-gui`
* Compile the resume with `pdflatex resume.tex`.
* Voila!

In Linux you just install a full TexLive (just to be safe) and follow the same instructions. For Windows... it's been so long I can be of no help. TexLive for Windows should help you out.

# License

My licensing terms are thus: You are allowed to take my code whole-sale and produce your own resume. For obvious reasons you may not reuse any of the content (such as skills, etc) but do with the formatting as you will. If you use my source to build your resume, I would love a link to your resume to see what you did differently (usually better).
