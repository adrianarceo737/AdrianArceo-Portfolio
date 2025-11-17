---
# Leave the homepage title empty to use the site title
title: ''
date: 2022-10-24
type: landing

design:
  # Default section spacing
  spacing: '6rem'

sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
      text: ''
      # Show a call-to-action button under your biography? (optional)
      button:
        text: ''
        url: ''
      headings:
        about: ''
        education: ''
        interests: ''
    design:
      # Avatar customization
      avatar:
        size: medium # Options: small (150px), medium (200px, default), large (320px), xl (400px), xxl (500px)
        shape: circle # Options: circle (default), square, rounded
  - block: markdown
    id: portfolio
    content:
      title: '🎵 Portfolio / Works'
      subtitle: 'Original Songs & Performances'
      text: |-
        Explore my collection of original folk songs and live performances. Each piece tells a story inspired by life, nature, and human experiences.
    design:
      columns: '1'
  - block: collection
    id: portfolio
    content:
      title: Featured Works
      text: 'Songs and performances that showcase my musical journey'
      filters:
        folders:
          - projects
        featured_only: true
    design:
      view: card
      columns: 2
  - block: markdown
    id: services
    content:
      title: '🎸 Services / Offerings'
      subtitle: ''
      text: |-
        I offer the following services for events, collaborations, and music projects:

        **Live Performances**
        - Intimate acoustic sets for small gatherings
        - Concert performances
        - Festival appearances

        **Songwriting & Music Production**
        - Original song composition
        - Collaborative songwriting
        - Music arrangement and production

        *Contact me to discuss your project or event needs.*
    design:
      columns: '1'
  - block: markdown
    id: contact
    content:
      title: '📧 Contact'
      subtitle: 'Get in Touch'
      text: |-
        Interested in booking a performance, collaborating on a project, or just want to connect? Feel free to reach out!

        *Update your email and social media links in the author profile above.*
    design:
      columns: '1'
---
