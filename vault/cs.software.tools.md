---
id: snkzcdiuaqe2yl3i81b8lys
title: Tools
desc: ''
updated: 1647630398262
created: 1647620461744
---

# Content Management System CMS

A content management system is a crucial part of a modern website allowing an application or group of applications’ digital content to be managed without having to code or develop new pages. Everything from your written content to your graphics is managed through this system and allows for easy management of your site.

there are two types of CMS:

* traditional CMS
* headless CMS

## traditional CMS

A traditional CMS, like WordPress or Drupal, is a monolith that connects the front-end and the back-end of a website in a neat and easy application code base. They contain **everything** from the database for content all the way up through the presentation layer.

| Pro  | Contra  |
|-------------- | -------------- |
| Entire site is served from a single system    | Create only website content (the same content can’t be easily served up on other devices)     |
| Easy to manage all content    | Do not always scale well     |
| Control front-end design through themes and templates    | Requires developers who are CMS specific     |
| Large communities for support    | Limited flexibility     |
| Lower technical barrier to entry    | More time and money required for maintenance and enhancements     |

**Usecase:**

* building a website that doesn’t need to share content with other digital properties


## headless CMS

A headless CMS differentiates itself by not connecting directly with a front-end at all. While traditional CMS’ aim to be a single solution to managing both the content and the front-end, a **headless CMS deals strictly with the content**. Once created and edited, content is published via an application programming interface (API) and that’s it. The headless CMS has no impact or input on the front-end. This provides the flexibility to get your content out in as many ways as possible regardless of how it’s presented.

| Pro  | Contra  |
|-------------- | -------------- |
| Content is ready to be served on any device | No content preview (Some systems allow you to build a preview integration but this does add additional upfront overhead.) |
| With the headless API developers can worry less about content and more about presentation | More upfront integration/configuration effort |
| Front-end agnostic (A headless CMS doesn’t care about where the content is going or how it’s going to be displayed. It simply serves it up allowing developers the freedom to use their preferred frameworks and tools.) | Developing a head/client(By “head/client”, we mean the output and displaying of the content that you have created (website, mobile application, etc).) |
| Simply create content without worrying about being in a single system that contains everything |  |

**Usecases:**

* Websites/web apps that use JavaScript frameworks such as React, Angular or VueJs
* Native mobile apps
* Any environment in which you need to publish content across multiple platforms all at once
* When using a static site generator

headless CMS hosting options include:

* on-premise CMS
* SaaS CMS

![[cs.software.hosting#on-premise-hosting]]