import { WebPlugin } from '@capacitor/core';
import { IntentGmapsPlugin } from './definitions';

export class IntentGmapsWeb extends WebPlugin implements IntentGmapsPlugin {
    constructor() {
        super({
            name: 'IntentGmaps',
            platforms: ['web'],
        });
    }

    async openMap(geo: Geo): Promise<boolean> {
        window.open(geo.url, '_blank')
        return true;
    }
}

const IntentGmaps = new IntentGmapsWeb();

export { IntentGmaps, Geo };

import { registerWebPlugin } from '@capacitor/core';
import { Geo } from './interfaces';
registerWebPlugin(IntentGmaps);
