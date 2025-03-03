// File: assets/js/pages/LandingPage.vue

<template>
  <SEOMeta
    :title="page_title"
    :description="meta_description"
    ogType="website"
    twitterCard="summary_large_image"
  />
  <div class="bg-gray-900 text-white min-h-screen">
    <!-- Hero Section -->
    <section
      class="relative py-20 bg-gradient-to-b from-indigo-900 to-gray-900"
    >
      <div class="absolute inset-0 overflow-hidden">
        <div
          class="absolute inset-0 bg-gradient-to-r from-indigo-900/70 to-gray-900/90"
        ></div>
        <div
          class="absolute inset-0 bg-[url('/images/video-pattern.svg')] opacity-10"
        ></div>
      </div>

      <div class="container mx-auto px-4 relative z-10">
        <div class="max-w-3xl mx-auto text-center mb-16">
          <h1 class="text-4xl md:text-6xl font-bold mb-6 leading-tight">
            Transform Your
            <span class="text-indigo-400">Content Marketing</span> with AI Video
            Generation
          </h1>
          <p class="text-xl md:text-2xl text-gray-300 mb-8">
            Create professional, compliance-ready videos in minutes - not days.
            GDPR and AI Act compliant for European businesses.
          </p>
          <div class="flex flex-col sm:flex-row justify-center gap-4">
            <button
              class="bg-indigo-600 hover:bg-indigo-700 text-white font-semibold px-6 py-3 rounded-lg transition duration-300"
            >
              Start Free Trial
            </button>
            <button
              class="bg-gray-800 hover:bg-gray-700 text-white font-semibold px-6 py-3 rounded-lg transition duration-300"
            >
              Watch Demo
            </button>
          </div>
        </div>
      </div>
    </section>

    <!-- Features Section -->
    <section class="py-20 bg-gray-900">
      <div class="container mx-auto px-4">
        <div class="text-center mb-16">
          <h2 class="text-3xl md:text-4xl font-bold mb-4">
            Why Choose Our AI Video Platform
          </h2>
          <p class="text-xl text-gray-400 max-w-3xl mx-auto">
            Powerful AI technology combined with European regulatory compliance
          </p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div class="bg-gray-800 p-8 rounded-xl">
            <div
              class="w-12 h-12 bg-indigo-600 rounded-lg flex items-center justify-center mb-4"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-6 w-6"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M13 10V3L4 14h7v7l9-11h-7z"
                />
              </svg>
            </div>
            <h3 class="text-xl font-bold mb-3">Lightning Fast Generation</h3>
            <p class="text-gray-400">
              Create stunning videos in minutes, not hours. Our AI-powered
              platform handles the heavy lifting.
            </p>
          </div>

          <div class="bg-gray-800 p-8 rounded-xl">
            <div
              class="w-12 h-12 bg-indigo-600 rounded-lg flex items-center justify-center mb-4"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-6 w-6"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"
                />
              </svg>
            </div>
            <h3 class="text-xl font-bold mb-3">GDPR & AI Act Compliant</h3>
            <p class="text-gray-400">
              Built with European regulations in mind. Fully compliant with GDPR
              and the European AI Act.
            </p>
          </div>

          <div class="bg-gray-800 p-8 rounded-xl">
            <div
              class="w-12 h-12 bg-indigo-600 rounded-lg flex items-center justify-center mb-4"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-6 w-6"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M15 15l-2 5L9 9l11 4-5 2zm0 0l5 5M7.188 2.239l.777 2.897M5.136 7.965l-2.898-.777M13.95 4.05l-2.122 2.122m-5.657 5.656l-2.12 2.122"
                />
              </svg>
            </div>
            <h3 class="text-xl font-bold mb-3">Customizable Templates</h3>
            <p class="text-gray-400">
              Choose from hundreds of templates or create your own. Our AI
              adapts to your brand identity.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- How It Works Section -->
    <section class="py-20 bg-gray-800">
      <div class="container mx-auto px-4">
        <div class="text-center mb-16">
          <h2 class="text-3xl md:text-4xl font-bold mb-4">How It Works</h2>
          <p class="text-xl text-gray-400 max-w-3xl mx-auto">
            Three simple steps to create professional, compliant AI-generated
            videos
          </p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-12">
          <div class="text-center">
            <div
              class="w-16 h-16 bg-indigo-600 rounded-full flex items-center justify-center mx-auto mb-6 text-2xl font-bold"
            >
              1
            </div>
            <h3 class="text-xl font-bold mb-3">Upload Your Content</h3>
            <p class="text-gray-400">
              Simply upload your script, images, or existing content. Our AI
              will analyze and prepare it for video transformation.
            </p>
          </div>

          <div class="text-center">
            <div
              class="w-16 h-16 bg-indigo-600 rounded-full flex items-center justify-center mx-auto mb-6 text-2xl font-bold"
            >
              2
            </div>
            <h3 class="text-xl font-bold mb-3">Customize Your Video</h3>
            <p class="text-gray-400">
              Choose styles, adjust pacing, add branding elements, and select
              from various AI-powered visuals and voices.
            </p>
          </div>

          <div class="text-center">
            <div
              class="w-16 h-16 bg-indigo-600 rounded-full flex items-center justify-center mx-auto mb-6 text-2xl font-bold"
            >
              3
            </div>
            <h3 class="text-xl font-bold mb-3">Generate & Share</h3>
            <p class="text-gray-400">
              With one click, our AI generates your video. Download in multiple
              formats or share directly to your channels.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Compliance Section -->
    <section class="py-20 bg-gray-900">
      <div class="container mx-auto px-4">
        <div class="max-w-4xl mx-auto">
          <div class="bg-gray-800 p-8 md:p-12 rounded-2xl">
            <div class="flex flex-col md:flex-row gap-8 items-center">
              <div class="md:w-1/3">
                <div class="p-4 bg-indigo-900 rounded-xl">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-24 w-24 mx-auto"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="1"
                      d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"
                    />
                  </svg>
                </div>
              </div>

              <div class="md:w-2/3">
                <h2 class="text-3xl font-bold mb-4">
                  European Compliance Built-In
                </h2>
                <p class="text-gray-300 mb-4">
                  Our platform is designed with European regulations as a
                  priority, not an afterthought.
                </p>
                <ul class="space-y-3">
                  <li class="flex items-start">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-6 w-6 text-green-500 mr-2 flex-shrink-0"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="currentColor"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M5 13l4 4L19 7"
                      />
                    </svg>
                    <span
                      >Full GDPR compliance with data minimization
                      principles</span
                    >
                  </li>
                  <li class="flex items-start">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-6 w-6 text-green-500 mr-2 flex-shrink-0"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="currentColor"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M5 13l4 4L19 7"
                      />
                    </svg>
                    <span
                      >EU AI Act ready with transparent risk assessment
                      protocols</span
                    >
                  </li>
                  <li class="flex items-start">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-6 w-6 text-green-500 mr-2 flex-shrink-0"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="currentColor"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M5 13l4 4L19 7"
                      />
                    </svg>
                    <span
                      >European data centers with industry-leading
                      security</span
                    >
                  </li>
                  <li class="flex items-start">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-6 w-6 text-green-500 mr-2 flex-shrink-0"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="currentColor"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M5 13l4 4L19 7"
                      />
                    </svg>
                    <span
                      >Detailed compliance documentation for your
                      organization</span
                    >
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Testimonials Section -->
    <section class="py-20 bg-gray-800">
      <div class="container mx-auto px-4">
        <div class="text-center mb-16">
          <h2 class="text-3xl md:text-4xl font-bold mb-4">
            What Our Customers Say
          </h2>
          <p class="text-xl text-gray-400 max-w-3xl mx-auto">
            Trusted by marketing teams across Europe
          </p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div class="bg-gray-900 p-8 rounded-xl">
            <div class="flex items-center mb-4">
              <div class="text-yellow-400">
                <span>★★★★★</span>
              </div>
            </div>
            <p class="text-gray-300 mb-6">
              "The compliance features alone were worth the investment. Our
              legal team was impressed with how thoroughly GDPR and AI Act
              requirements were addressed."
            </p>
            <div class="flex items-center">
              <div
                class="w-12 h-12 bg-indigo-600 rounded-full mr-4 flex items-center justify-center font-bold"
              >
                JD
              </div>
              <div>
                <p class="font-bold">Juliet Demarco</p>
                <p class="text-gray-400 text-sm">
                  Chief Marketing Officer, TechVista GmbH
                </p>
              </div>
            </div>
          </div>

          <div class="bg-gray-900 p-8 rounded-xl">
            <div class="flex items-center mb-4">
              <div class="text-yellow-400">
                <span>★★★★★</span>
              </div>
            </div>
            <p class="text-gray-300 mb-6">
              "We've cut our video production time by 80% while maintaining
              quality that matches our previous agency-produced content. The ROI
              is incredible."
            </p>
            <div class="flex items-center">
              <div
                class="w-12 h-12 bg-indigo-600 rounded-full mr-4 flex items-center justify-center font-bold"
              >
                MR
              </div>
              <div>
                <p class="font-bold">Marco Rossi</p>
                <p class="text-gray-400 text-sm">
                  Digital Marketing Director, Finova Partners
                </p>
              </div>
            </div>
          </div>

          <div class="bg-gray-900 p-8 rounded-xl">
            <div class="flex items-center mb-4">
              <div class="text-yellow-400">
                <span>★★★★★</span>
              </div>
            </div>
            <p class="text-gray-300 mb-6">
              "As a small business, we could never afford professional video
              marketing before. Now we create multiple videos weekly that look
              fantastic."
            </p>
            <div class="flex items-center">
              <div
                class="w-12 h-12 bg-indigo-600 rounded-full mr-4 flex items-center justify-center font-bold"
              >
                SL
              </div>
              <div>
                <p class="font-bold">Sophie Lefèvre</p>
                <p class="text-gray-400 text-sm">Founder, Écologie Solutions</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-20 bg-gradient-to-b from-gray-900 to-indigo-900">
      <div class="container mx-auto px-4">
        <div class="max-w-3xl mx-auto text-center">
          <h2 class="text-3xl md:text-4xl font-bold mb-6">
            Ready to Transform Your Content Marketing?
          </h2>
          <p class="text-xl text-gray-300 mb-8">
            Join hundreds of European businesses creating compliant, engaging
            video content at scale.
          </p>
          <div class="flex flex-col sm:flex-row justify-center gap-4">
            <button
              class="bg-white text-indigo-900 hover:bg-gray-200 font-semibold px-6 py-3 rounded-lg transition duration-300"
            >
              Start Free 14-Day Trial
            </button>
            <button
              class="border border-white text-white hover:bg-white/10 font-semibold px-6 py-3 rounded-lg transition duration-300"
            >
              Schedule Demo
            </button>
          </div>
          <p class="text-gray-400 mt-6 text-sm">
            No credit card required. Cancel anytime.
          </p>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import SEOMeta from "../components/SEOMeta.vue";

defineProps({
  page_title: String,
  meta_description: String,
});
</script>
