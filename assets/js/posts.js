---
layout: null
---

const postsHref = ['{% for post in site.posts limit:150 %}{{ post.url }}{% unless forloop.last %}','{% endunless %}{% endfor %}'];
const postsTitle = ['{% for post in site.posts limit:150 %}{{ post.title }}{% unless forloop.last %}','{% endunless %}{% endfor %}'];
const postsImage = ['{% for post in site.posts limit:150 %}{{post.urlImage}}{%filmeAPI {{post.urlPoster}}%}{% unless forloop.last %}','{% endunless %}{% endfor %}'];
const postsCategoria = ['{% for post in site.posts limit:150 %}{{ post.tagInPost }}{% unless forloop.last %}','{% endunless %}{% endfor %}'];


const slidesHref = ['{% for post in site.posts limit:50 %}{{ post.url }}{% unless forloop.last %}','{% endunless %}{% endfor %}'];
const slidesTitle = ['{% for post in site.posts limit:50 %}{{ post.title }}{% unless forloop.last %}','{% endunless %}{% endfor %}'];
const slidesCapa = ['{% for post in site.posts limit:150 %}{{post.urlImage}}{%filmeAPI {{post.urlCapa}}%}{% unless forloop.last %}','{% endunless %}{% endfor %}'];