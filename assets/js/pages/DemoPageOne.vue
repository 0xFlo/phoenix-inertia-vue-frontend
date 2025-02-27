<script setup>
import { Link, router } from "@inertiajs/vue3";
import DefaultLayout from "../Layouts/DefaultLayout.vue";

defineProps({
  place: String,
  facts: Array,
});

const loadFacts = () => {
  router.reload({ only: ["facts"] });
};
</script>

<template>
  <div>
    <div
      class="rounded-md shadow flex items-center gap-x-6 bg-gray-900 px-6 py-2.5 sm:px-3.5 mb-8"
    >
      <p class="text-sm leading-6 text-white">
        <Link href="/groceries">
          <span
            >A <strong class="font-semibold">more advanced demo</strong> can be
            found here!</span
          >
        </Link>
      </p>
    </div>
    <div class="px-4 sm:px-0">
      <div class="md:flex md:items-center md:justify-between">
        <div>
          <h3 class="text-base font-semibold leading-7 text-gray-900">
            Hello, {{ place }}!
          </h3>
          <p class="mt-1 max-w-2xl text-sm leading-6 text-gray-500">
            To learn more about the world, click the <em>load facts</em> button.
          </p>
        </div>
        <div class="mt-4 flex md:ml-4 md:mt-0">
          <button
            type="button"
            @click="loadFacts"
            class="ml-3 inline-flex items-center rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-700 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
          >
            Load Facts
          </button>
        </div>
      </div>
    </div>
    <div v-if="facts" class="mt-6 border-t border-gray-100">
      <dl class="divide-y divide-gray-100">
        <div
          v-for="fact in facts"
          :key="fact.key"
          class="px-4 py-6 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-0"
        >
          <dt class="text-sm font-medium leading-6 text-gray-900">
            {{ fact.key }}
          </dt>
          <dd
            class="mt-1 text-sm leading-6 text-gray-700 sm:col-span-2 sm:mt-0"
          >
            {{ fact.value }}
          </dd>
        </div>
      </dl>
    </div>
  </div>
</template>
