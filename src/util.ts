import type { Config, Plugin } from './types';

export const defineConfig = <T extends Config>(config: T): T => {
  return config;
}

export function definePlugin(plugin: Plugin): Plugin {
  return plugin;
}