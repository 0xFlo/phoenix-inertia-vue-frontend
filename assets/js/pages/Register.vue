<script setup>
import { useForm } from "@inertiajs/vue3";
import DefaultLayout from "../Layouts/DefaultLayout.vue";

const form = useForm({
  email: "",
  password: "",
  name: "",
});

function submit() {
  form.post("/register", {
    preserveScroll: true,
    onSuccess: () => form.reset(),
  });
}
</script>

<template>
  <DefaultLayout title="Register">
    <div class="flex justify-center items-center min-h-screen -mt-16">
      <div class="w-full max-w-md p-8 bg-[#2C2C2E] rounded-lg shadow-lg">
        <h2 class="text-2xl font-bold mb-6 text-center">Create Account</h2>

        <form @submit.prevent="submit" class="space-y-6">
          <div>
            <label class="block text-sm font-medium mb-2" for="name"
              >Name</label
            >
            <input
              id="name"
              v-model="form.name"
              type="text"
              class="w-full px-3 py-2 bg-[#3A3A3C] rounded-md text-white focus:outline-none focus:ring-2 focus:ring-indigo-500"
            />
            <div v-if="form.errors.name" class="text-red-500 text-sm mt-1">
              {{ form.errors.name }}
            </div>
          </div>

          <div>
            <label class="block text-sm font-medium mb-2" for="email"
              >Email</label
            >
            <input
              id="email"
              v-model="form.email"
              type="email"
              class="w-full px-3 py-2 bg-[#3A3A3C] rounded-md text-white focus:outline-none focus:ring-2 focus:ring-indigo-500"
              required
            />
            <div v-if="form.errors.email" class="text-red-500 text-sm mt-1">
              {{ form.errors.email }}
            </div>
          </div>

          <div>
            <label class="block text-sm font-medium mb-2" for="password"
              >Password</label
            >
            <input
              id="password"
              v-model="form.password"
              type="password"
              class="w-full px-3 py-2 bg-[#3A3A3C] rounded-md text-white focus:outline-none focus:ring-2 focus:ring-indigo-500"
              required
            />
            <div v-if="form.errors.password" class="text-red-500 text-sm mt-1">
              {{ form.errors.password }}
            </div>
          </div>

          <div>
            <button
              type="submit"
              class="w-full bg-indigo-600 py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
              :disabled="form.processing"
            >
              Register
            </button>
          </div>

          <div class="text-sm text-center">
            <p>
              Already have an account?
              <a href="/login" class="text-indigo-400 hover:text-indigo-300"
                >Login</a
              >
            </p>
          </div>
        </form>
      </div>
    </div>
  </DefaultLayout>
</template>
