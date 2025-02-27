<script setup>
import { Link } from "@inertiajs/vue3";

defineProps({
  groceries: Array,
});
</script>

<template>
  <div>
    <div class="px-4 sm:px-0">
      <div class="md:flex md:items-center md:justify-between">
        <div>
          <h3 class="text-base font-semibold leading-7 text-gray-900">
            Shopping List
          </h3>
          <p class="mt-1 max-w-2xl text-sm leading-6 text-gray-500">
            We need this stuff
          </p>
        </div>
        <div class="mt-4 flex md:ml-4 md:mt-0">
          <Link
            href="/groceries/new"
            class="inline-flex items-center gap-x-1.5 rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
          >
            <svg
              class="-ml-0.5 h-5 w-5"
              viewBox="0 0 20 20"
              fill="currentColor"
              aria-hidden="true"
            >
              <path
                d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z"
              />
            </svg>
            Add item
          </Link>
        </div>
      </div>
    </div>
    <ul role="list" class="divide-y divide-gray-100">
      <li
        v-for="item in groceries"
        :key="item.id"
        class="flex justify-between gap-x-6 py-5"
      >
        <div class="flex min-w-0 gap-x-4">
          <div class="min-w-0 flex-auto">
            <p class="text-sm font-semibold leading-6 text-gray-900">
              {{ item.name }}
            </p>
            <p class="mt-1 truncate text-xs leading-5 text-gray-500">
              {{ item.quantity }} needed
            </p>
          </div>
        </div>
      </li>
    </ul>
  </div>
</template>
