import { Geo } from './interfaces';

declare module '@capacitor/core' {
    interface PluginRegistry {
        IntentGmaps: IntentGmapsPlugin;
    }
}

export interface IntentGmapsPlugin {
    openMap(geo: Geo): Promise<boolean>;
}
