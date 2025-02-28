<script setup>
import { Link } from "@inertiajs/vue3";
import DefaultLayout from "../Layouts/DefaultLayout.vue";

defineProps({
  groceries: Array,
  auth: Object,
});
</script>

<template>
  <DefaultLayout :auth="auth">
    <div class="bg-gray-800 rounded-lg shadow-lg p-6">
      <div class="flex justify-between items-center mb-6">
        <div>
          <h2 class="text-xl font-semibold text-white">Shopping List</h2>
          <p class="text-gray-400 text-sm">We need this stuff</p>
        </div>
        <Link
          href="/groceries/new"
          class="inline-flex items-center px-4 py-2 bg-indigo-600 text-white rounded-md hover:bg-indigo-700"
        >
          <svg class="w-5 h-5 mr-2" fill="currentColor" viewBox="0 0 20 20">
            <path
              d="M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z"
            />
          </svg>
          Add item
        </Link>
      </div>

      <div v-if="groceries.length === 0" class="text-gray-400 text-center py-8">
        No items in your shopping list. Add some!
      </div>

      <ul v-else class="divide-y divide-gray-700">
        <li
          v-for="item in groceries"
          :key="item.id"
          class="py-4 flex flex-col sm:flex-row sm:items-center sm:justify-between"
        >
          <div>
            <h3 class="text-lg font-medium text-white">{{ item.name }}</h3>
            <p class="text-gray-400">{{ item.quantity }} needed</p>
          </div>
        </li>
      </ul>
    </div>
  </DefaultLayout>
</template>
