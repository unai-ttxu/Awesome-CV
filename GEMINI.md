# Awesome-CV Project Context

This repository is a LaTeX-based CV/Resume template system. It has been customized to support multi-language versions (English and Spanish) and medical-specific professional content.

## Project Overview
- **Tech Stack:** LaTeX (using the `awesome-cv.cls` class).
- **Core Structure:** 
  - Main entry points are in `examples/` (`resume.tex`, `resume-es.tex`).
  - Modular sections are located in `examples/resume/` (e.g., `experience.tex`).
  - Language variants use the `-es` suffix for Spanish (e.g., `skills-es.tex`).

## Engineering Standards & Conventions

### LaTeX Integrity
- **Escaping:** Always escape ampersands (`\&`) and other reserved characters (%, $, #, _, {, }) within content strings.
- **Engine:** The project is configured to build using `lualatex` via the `Makefile`.
- **Class File:** Do not modify `awesome-cv.cls` unless specifically requested; it contains the foundational styling and font loading (Source Sans 3, Roboto).

### Multilingual Management
- **Synchronization:** When updating professional experience or skills, ensure changes are mirrored across both English (`.tex`) and Spanish (`-es.tex`) files.
- **Language Standards:** 
  - Use **CEFR levels** (A1-C2) for language proficiency.
  - Medical terms should be accurately translated (e.g., "MIR Exam" for "Examen MIR").

### Build Workflow
- **Docker Usage:** The preferred build method is via the `unaittxu/texlive-awesome-cv` container.
- **Command:** 
  ```bash
  container run --rm -i -w "/doc" -v "$PWD":/doc unaittxu/texlive-awesome-cv make resume.pdf resume-es.pdf
  ```

## Technical Insights
- **Section Headers:** Use `\cvsection{}` for main titles and `\cvsubsection{}` for categories within sections (like in `extracurricular.tex`).
- **Formatting:** Maintain the `
ame{FirstName LastName}{}` format as the primary name declaration in `resume.tex`.
- **Highlight Color:** The default highlight color is `awesome-darknight`.
