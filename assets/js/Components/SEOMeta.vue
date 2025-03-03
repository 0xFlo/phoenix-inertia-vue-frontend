// File: assets/js/components/SEOMeta.vue

<script setup>
import { Head } from "@inertiajs/vue3";

const props = defineProps({
  title: {
    type: String,
    required: true,
  },
  description: {
    type: String,
    required: true,
  },
  canonical: {
    type: String,
    default: "",
  },
  ogImage: {
    type: String,
    default: "/images/og-image.jpg",
  },
  ogType: {
    type: String,
    default: "website",
  },
  twitterCard: {
    type: String,
    default: "summary_large_image",
  },
});
</script>

<template>
  <Head>
    <title>{{ title }}</title>
    <meta name="description" :content="description" />

    <!-- Open Graph / Facebook -->
    <meta property="og:type" :content="ogType" />
    <meta property="og:url" :content="canonical || window.location.href" />
    <meta property="og:title" :content="title" />
    <meta property="og:description" :content="description" />
    <meta property="og:image" :content="ogImage" />

    <!-- Twitter -->
    <meta property="twitter:card" :content="twitterCard" />
    <meta property="twitter:url" :content="canonical || window.location.href" />
    <meta property="twitter:title" :content="title" />
    <meta property="twitter:description" :content="description" />
    <meta property="twitter:image" :content="ogImage" />

    <!-- Canonical -->
    <link v-if="canonical" rel="canonical" :href="canonical" />

    <!-- Structured data for Video software -->
    <script type="application/ld+json">
      {
        "@context": "https://schema.org",
        "@type": "SoftwareApplication",
        "name": "VideoGenAI",
        "applicationCategory": "MultimediaApplication",
        "operatingSystem": "Web",
        "offers": {
          "@type": "Offer",
          "price": "0",
          "priceCurrency": "EUR"
        },
        "description": "AI-powered video generation platform that is GDPR and EU AI Act compliant"
      }
    </script>
  </Head>
</template>
