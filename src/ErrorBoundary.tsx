import React from 'react';
import './error.css';

interface ErrorBoundryState {
  hasError: boolean,
  error?: Error,
}

export class ErrorBoundary extends React.Component {

  public state: ErrorBoundryState;

  constructor(props: any) {
    super(props);
    this.state = { hasError: false, error: undefined };
  }

  componentDidCatch(error: Error, info: any) {
    // Display fallback UI
    this.setState({ hasError: true, error });
    // You can also log the error to an error reporting service
    // logErrorToMyService(error, info);
  }

  render() {
    if (this.state.hasError) {
      // You can render any custom fallback UI
      return (
        <>
          <h1>Something went wrong.</h1>
          <p className="error">Error messaage: {this.state.error?.toString()}</p>
        </>
      );
    }
    return this.props.children;
  }
}
