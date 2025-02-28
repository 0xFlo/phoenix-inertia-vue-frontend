<script setup>
import { useForm } from "@inertiajs/vue3";
import DefaultLayout from "../../Layouts/DefaultLayout.vue";

const form = useForm({
  name: "",
  email: "",
  password: "",
  password_confirmation: "",
});

function submit() {
  form.post("/register");
}
</script>

<template>
  <DefaultLayout>
    <div class="max-w-md mx-auto mt-8 p-6 bg-gray-800 rounded-lg shadow-lg">
      <h1 class="text-xl font-semibold mb-4 text-white">Create Account</h1>
      <form @submit.prevent="submit">
        <div class="mb-4">
          <label for="name" class="block text-sm font-medium text-gray-300 mb-1"
            >Name</label
          >
          <input
            v-model="form.name"
            type="text"
            id="name"
            class="w-full px-3 py-2 bg-gray-700 border border-gray-600 rounded-md text-white focus:outline-none focus:ring-2 focus:ring-indigo-500"
            required
          />
          <p v-if="form.errors.name" class="mt-1 text-sm text-red-500">
            {{ form.errors.name }}
          </p>
        </div>

        <div class="mb-4">
          <label
            for="email"
            class="block text-sm font-medium text-gray-300 mb-1"
            >Email</label
          >
          <input
            v-model="form.email"
            type="email"
            id="email"
            class="w-full px-3 py-2 bg-gray-700 border border-gray-600 rounded-md text-white focus:outline-none focus:ring-2 focus:ring-indigo-500"
            required
          />
          <p v-if="form.errors.email" class="mt-1 text-sm text-red-500">
            {{ form.errors.email }}
          </p>
        </div>

        <div class="mb-4">
          <label
            for="password"
            class="block text-sm font-medium text-gray-300 mb-1"
            >Password</label
          >
          <input
            v-model="form.password"
            type="password"
            id="password"
            class="w-full px-3 py-2 bg-gray-700 border border-gray-600 rounded-md text-white focus:outline-none focus:ring-2 focus:ring-indigo-500"
            required
          />
          <p v-if="form.errors.password" class="mt-1 text-sm text-red-500">
            {{ form.errors.password }}
          </p>
        </div>

        <div class="mb-6">
          <label
            for="password_confirmation"
            class="block text-sm font-medium text-gray-300 mb-1"
            >Confirm Password</label
          >
          <input
            v-model="form.password_confirmation"
            type="password"
            id="password_confirmation"
            class="w-full px-3 py-2 bg-gray-700 border border-gray-600 rounded-md text-white focus:outline-none focus:ring-2 focus:ring-indigo-500"
            required
          />
        </div>

        <div>
          <button
            type="submit"
            :disabled="form.processing"
            class="w-full px-4 py-2 bg-indigo-600 text-white rounded-md hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 disabled:opacity-50"
          >
            Register
          </button>
        </div>
      </form>
    </div>
  </DefaultLayout>
</template>
