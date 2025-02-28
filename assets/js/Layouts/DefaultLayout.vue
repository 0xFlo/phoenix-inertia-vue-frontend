<script setup>
import { Link } from "@inertiajs/vue3";
import { computed } from "vue";

const props = defineProps({
  title: String,
  current_user: Object,
});

const isAuthenticated = computed(() => !!props.current_user);
</script>

<template>
  <div class="min-h-screen bg-[#1C1C1E] text-white">
    <header class="border-b border-gray-700 py-3">
      <div class="container mx-auto px-4 flex justify-between items-center">
        <div class="flex items-center space-x-4">
          <Link href="/" class="text-xl font-semibold">MyApp</Link>
        </div>
        <div class="flex items-center space-x-4">
          <button class="p-2 rounded hover:bg-gray-700">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-5 w-5"
              viewBox="0 0 20 20"
              fill="currentColor"
            >
              <path
                fill-rule="evenodd"
                d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                clip-rule="evenodd"
              />
            </svg>
          </button>
          <button class="p-2 rounded hover:bg-gray-700">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-5 w-5"
              viewBox="0 0 20 20"
              fill="currentColor"
            >
              <path
                fill-rule="evenodd"
                d="M11.49 3.17c-.38-1.56-2.6-1.56-2.98 0a1.532 1.532 0 01-2.286.948c-1.372-.836-2.942.734-2.106 2.106.54.886.061 2.042-.947 2.287-1.561.379-1.561 2.6 0 2.978a1.532 1.532 0 01.947 2.287c-.836 1.372.734 2.942 2.106 2.106a1.532 1.532 0 012.287.947c.379 1.561 2.6 1.561 2.978 0a1.533 1.533 0 012.287-.947c1.372.836 2.942-.734 2.106-2.106a1.533 1.533 0 01.947-2.287c1.561-.379 1.561-2.6 0-2.978a1.532 1.532 0 01-.947-2.287c.836-1.372-.734-2.942-2.106-2.106a1.532 1.532 0 01-2.287-.947zM10 13a3 3 0 100-6 3 3 0 000 6z"
                clip-rule="evenodd"
              />
            </svg>
          </button>
          <div class="flex space-x-2" v-if="!isAuthenticated">
            <Link
              href="/register"
              class="bg-white text-black rounded px-3 py-1 text-sm font-medium"
            >
              Sign up
            </Link>
            <Link href="/login" class="text-white text-sm hover:underline">
              Sign in
            </Link>
          </div>
          <div v-else class="flex items-center space-x-4">
            <span class="text-sm">{{
              current_user.name || current_user.email
            }}</span>
            <Link
              href="/logout"
              method="delete"
              as="button"
              class="text-sm text-gray-300 hover:text-white"
            >
              Logout
            </Link>
          </div>
        </div>
      </div>
    </header>

    <main class="container mx-auto px-4 py-8">
      <slot></slot>
    </main>
  </div>
</template>
