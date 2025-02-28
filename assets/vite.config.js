// assets/vite.config.js
import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";
import path from "path";

export default defineConfig({
  plugins: [vue()],
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./js"),
      phoenix: "phoenix",
      phoenix_html: "phoenix_html",
    },
  },
  build: {
    target: "es2020",
    outDir: "../priv/static/assets",
    emptyOutDir: true,
    manifest: true,
    rollupOptions: {
      input: {
        app: "./js/app.js",
      },
      output: {
        entryFileNames: "[name].js",
        chunkFileNames: "js/[name]-[hash].js",
        assetFileNames: "[name].[ext]",
      },
      external: [],
    },
  },
});
