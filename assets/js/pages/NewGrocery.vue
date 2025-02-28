<script setup>
import { Link, useForm } from "@inertiajs/vue3";
import DefaultLayout from "../Layouts/DefaultLayout.vue";

defineProps({
  auth: Object,
});

const form = useForm({
  name: "",
  quantity: 1,
});

function submit() {
  form.post("/groceries");
}
</script>

<template>
  <DefaultLayout :auth="auth">
    <div class="bg-gray-800 rounded-lg shadow-lg p-6">
      <div class="mb-6">
        <Link
          href="/groceries"
          class="inline-flex items-center text-indigo-400 hover:text-indigo-300"
        >
          <svg
            class="w-4 h-4 mr-2"
            fill="none"
            stroke="currentColor"
            viewBox="0 0 24 24"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M10 19l-7-7m0 0l7-7m-7 7h18"
            />
          </svg>
          Back to List
        </Link>
      </div>

      <h2 class="text-xl font-semibold text-white mb-2">New Grocery</h2>
      <p class="text-gray-400 mb-6">
        Create a record of a grocery item you need to buy.
      </p>

      <form @submit.prevent="submit">
        <div class="grid grid-cols-1 gap-6 sm:grid-cols-2">
          <div class="sm:col-span-2">
            <label
              for="name"
              class="block text-sm font-medium text-gray-300 mb-1"
            >
              Name
            </label>
            <input
              type="text"
              v-model="form.name"
              id="name"
              class="w-full px-3 py-2 bg-gray-700 border border-gray-600 rounded-md text-white focus:outline-none focus:ring-2 focus:ring-indigo-500"
            />
            <p v-if="form.errors.name" class="mt-1 text-sm text-red-500">
              {{ form.errors.name }}
            </p>
          </div>

          <div>
            <label
              for="quantity"
              class="block text-sm font-medium text-gray-300 mb-1"
            >
              Quantity
            </label>
            <input
              type="number"
              v-model="form.quantity"
              id="quantity"
              class="w-full px-3 py-2 bg-gray-700 border border-gray-600 rounded-md text-white focus:outline-none focus:ring-2 focus:ring-indigo-500"
              min="1"
            />
            <p v-if="form.errors.quantity" class="mt-1 text-sm text-red-500">
              {{ form.errors.quantity }}
            </p>
          </div>
        </div>

        <div class="mt-8 flex justify-end">
          <button
            type="submit"
            :disabled="form.processing"
            class="px-4 py-2 bg-indigo-600 text-white rounded-md hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 disabled:opacity-50"
          >
            Save Item
          </button>
        </div>
      </form>
    </div>
  </DefaultLayout>
</template>
