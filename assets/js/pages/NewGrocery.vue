<script setup>
import { Link, useForm } from "@inertiajs/vue3";

const form = useForm({
  name: "",
  quantity: 1,
});

function submit() {
  form.post("/groceries");
}
</script>

<template>
  <form @submit.prevent="submit">
    <div class="space-y-12">
      <Link
        href="/groceries"
        class="rounded bg-white px-2 py-1 text-xs font-semibold text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 hover:bg-gray-50"
      >
        ← Back to List
      </Link>
      <div class="pb-12">
        <h2 class="text-base font-semibold leading-7 text-gray-900">
          New Grocery
        </h2>
        <p class="mt-1 text-sm leading-6 text-gray-600">
          Create a record of a grocery item you need to buy.
        </p>

        <div class="mt-10 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
          <div class="sm:col-span-4">
            <label
              for="name"
              class="block text-sm font-medium leading-6 text-gray-900"
            >
              Name
            </label>

            <div class="mt-2">
              <input
                type="text"
                v-model="form.name"
                id="name"
                class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
              />
            </div>

            <p v-if="form.errors.name" class="mt-2 text-sm text-red-600">
              {{ form.errors.name }}
            </p>
          </div>
          <div class="sm:col-span-2">
            <label
              for="quantity"
              class="block text-sm font-medium leading-6 text-gray-900"
            >
              Quantity
            </label>

            <div class="mt-2">
              <input
                type="number"
                v-model="form.quantity"
                id="quantity"
                class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
              />
            </div>
            <p v-if="form.errors.quantity" class="mt-2 text-sm text-red-600">
              {{ form.errors.quantity }}
            </p>
          </div>
        </div>
      </div>
    </div>

    <div class="mt-6 flex items-center justify-end gap-x-6">
      <button
        type="submit"
        :disabled="form.processing"
        class="rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
      >
        Submit
      </button>
    </div>
  </form>
</template>
