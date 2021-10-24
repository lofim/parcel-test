import React from 'react';
// import * as Content from './content.mdx';

export function ErrorThrowingWidget() {
    throw new Error('Widget produced an error!');
    // return <Content />;
}
