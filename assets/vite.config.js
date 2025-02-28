// assets/vite.config.js
import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";
import path from "path";

export default defineConfig({
  plugins: [vue()],
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./js"),
    },
  },
  build: {
    target: "es2020",
    outDir: "../priv/static/assets",
    emptyOutDir: true,
    rollupOptions: {
      input: {
        app: "./js/app.js",
      },
      output: {
        entryFileNames: "[name].js",
        chunkFileNames: "js/[name]-[hash].js",
        assetFileNames: "[name].[ext]",
      },
    },
  },
});
