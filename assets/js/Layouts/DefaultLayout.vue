<script setup>
import { Link } from "@inertiajs/vue3";

defineProps({
  title: String,
  current_user: Object,
});
</script>

<template>
  <div class="min-h-screen bg-[#1C1C1E] text-white">
    <header class="border-b border-gray-700 py-3">
      <div class="container mx-auto px-4 flex justify-between items-center">
        <div class="flex items-center space-x-4">
          <Link href="/" class="text-xl font-semibold">DarkApp</Link>
        </div>
        <div class="flex items-center space-x-4">
          <Link href="/groceries" class="text-sm hover:text-indigo-400"
            >Groceries</Link
          >

          <template v-if="current_user">
            <span class="text-sm text-gray-400">{{ current_user.name }}</span>
            <Link
              href="/logout"
              method="post"
              as="button"
              class="text-sm text-white hover:text-indigo-400"
            >
              Logout
            </Link>
          </template>
          <template v-else>
            <Link href="/login" class="text-sm hover:text-indigo-400"
              >Sign in</Link
            >
            <Link
              href="/register"
              class="px-3 py-1 text-sm bg-indigo-600 text-white rounded-md hover:bg-indigo-700"
            >
              Sign up
            </Link>
          </template>
        </div>
      </div>
    </header>

    <main class="container mx-auto px-4 py-8">
      <slot></slot>
    </main>
  </div>
</template>
