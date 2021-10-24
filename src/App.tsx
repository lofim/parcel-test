import React from 'react';
import { ErrorBoundary } from './ErrorBoundary';
import { ErrorThrowingWidget } from './ErrorThrowingWidget';

export function App() {
    return (
        <ErrorBoundary>
            <ErrorThrowingWidget />
        </ErrorBoundary>
    );
}
