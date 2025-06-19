import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

// https://astro.build/config
export default defineConfig({
  site: 'https://coding-pasta.github.io',
  base: '/Erasmus-Finlandia-2025/',
  integrations: [tailwind()],
});

