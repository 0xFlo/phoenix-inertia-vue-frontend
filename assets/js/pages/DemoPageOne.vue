<script setup>
import { Link, router } from "@inertiajs/vue3";
import DefaultLayout from "../Layouts/DefaultLayout.vue";

defineProps({
  place: String,
  facts: Array,
  auth: Object,
});

const loadFacts = () => {
  router.reload({ only: ["facts"] });
};
</script>

<template>
  <DefaultLayout :auth="auth">
    <div>
      <div class="bg-gray-800 rounded-lg shadow-lg p-6 mb-8">
        <h1 class="text-2xl font-bold text-white mb-2">Hello, {{ place }}!</h1>
        <p class="text-gray-300 mb-4">
          To learn more about the world, click the <em>load facts</em> button.
        </p>
        <Link
          href="/groceries"
          class="inline-block mb-4 text-indigo-400 hover:text-indigo-300"
        >
          A <strong>more advanced demo</strong> can be found here!
        </Link>

        <button
          @click="loadFacts"
          class="px-4 py-2 bg-indigo-600 text-white rounded-md hover:bg-indigo-700 focus:outline-none"
        >
          Load Facts
        </button>
      </div>

      <div v-if="facts" class="bg-gray-800 rounded-lg shadow-lg p-6">
        <h2 class="text-xl font-semibold text-white mb-4">World Facts</h2>
        <div
          v-for="fact in facts"
          :key="fact.key"
          class="mb-4 pb-4 border-b border-gray-700 last:border-0 last:mb-0 last:pb-0"
        >
          <div class="text-indigo-400 font-medium">{{ fact.key }}</div>
          <div class="text-gray-300">{{ fact.value }}</div>
        </div>
      </div>
    </div>
  </DefaultLayout>
</template>
