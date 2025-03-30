<!-- markdownlint-disable MD033 -->
<h1 align="center">
    <img width="100" height="100" src="docs/assets/icon/renovate.png" alt="Renovate Logo"/>
    <br/><br/>
    <i>chezmoi.sh</i> - Renovate configuration presets
</h1>

<h4 align="center">Collection of <a href="https://renovatebot.com/">Renovate</a> configuration presets for this organization.</h4>

<div align="center">

[ ![License](https://img.shields.io/github/license/chezmoi-sh/renovate-config?logo=git&logoColor=white&logoWidth=20) ](LICENSE)
[ ![Pending dependencies](https://img.shields.io/github/issues-pr/chezmoi-sh/renovate-config/type:%20dependencies?label=dependencies&logo=renovatebot&logoWidth=20&style=flat)
](https://github.com/chezmoi-sh/renovate-config/pulls?q=is%3Apr+is%3Aopen+label%3A%22type%3A+dependencies%22)

</div>

---

<!-- markdownlint-enable MD033 -->

## Renovate Presets

This repository contains all Renovate presets used within the chezmoi-sh organization.

### [Why Use Presets?](https://docs.renovatebot.com/key-concepts/presets/)

Presets provide several benefits:

- **Simplified Setup**: Configure Renovate with optimal default settings.
- **Reduced Duplication**: Avoid repetitive configurations across multiple repositories.
- **Enhanced Collaboration**: Share standardized configurations across teams and projects.
- **Extensibility**: Build upon existing configurations by extending them with custom rules.

### Managing Configurations Across Multiple Repositories

For organizations managing Renovate across numerous repositories, creating a global preset configuration is highly recommended. By extending this global preset in each repository, you centralize and streamline your configuration management. This approach ensures consistency and simplifies updates, as all global settings are maintained in a single file within a dedicated repository.

## List of existing presets

- `github>chezmoi-sh/renovate-config`: default Renovate configuration.
- `github>chezmoi-sh/renovate-config:gitmoji`: make each Renovate commit compatible with [Gitmoji](https://gitmoji.dev/).
- `github>chezmoi-sh/renovate-config:github-actions({{schedule}})`: groups all GitHub-actions upgrades together to reduce the number of PRs.
  - `{{schedule}}`: defines when GitHub actions upgrade should be scheduled. Must be one of `daily`, `earlyMondays`, `monthly`, `nonOfficeHours`, `quarterly`, `weekdays`, `weekends`, `weekly` or `yearly`
