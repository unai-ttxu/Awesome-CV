# AI Agent Context & Guidelines

This document provides context and instructions for AI agents assisting with the maintenance and updates of this repository.

## Repository Overview
- **Project:** A LaTeX-based CV/Resume repository utilizing the [Awesome-CV](https://github.com/posquit0/Awesome-CV) template.
- **Engine:** Optimized for `lualatex` (default in `Makefile`) but compatible with `xelatex`.
- **Structure:** 
    - Main entry points are in the `examples/` directory (e.g., `resume-unai.tex`).
    - Section content is modularized in subdirectories (e.g., `examples/resume/unai/*.tex`).
- **Management:** Maintain the existing LaTeX structure and modularity to ensure ease of maintenance and alignment with the upstream template.

## Unai's Resume (`resume-unai.tex`)
- **Source Files:** All content for Unai's resume is located in `examples/resume/unai/`.
- **Content Alignment:** Keep the resume aligned with the latest [LinkedIn profile](https://www.linkedin.com/in/unaittxu).
- **Style Guidelines:**
    - **Experience:** Focus on high-level impact and SRE/Platform leadership. Include relevant "Tech Stack" details inline within the role descriptions to aid diagonal readers, ATS systems, and AI review tools.
    - **Skills:** Group skills into clear categories: `SRE`, `Platform`, `DevOps`, `Cloud`, `Observability`, `Programming`, and `Languages`. 
    - **Redundancy:** Avoid redundant terms like "Engineering" or repeating the category name within the skill items (e.g., "Site Reliability" under the "SRE" category).
- **Formatting:** Use `\newpage` strategically to manage page breaks and ensure section titles remain with their content.

## Build Process
To build the PDF, use the `containerd` runtime with the following command (which includes all necessary TeX Live dependencies):

```bash
container run --rm -i -w "/doc" -v "$PWD":/doc unaittxu/texlive-awesome-cv make resume-unai.pdf
```
