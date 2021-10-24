# Parcel test

A simple workspace to test out [Parceljs](https://parceljs.org/) features.

- `src` folder holds a barebones typescript react project
- `src-elm` folder holds a barebones elm project

Both are there to showcase minimal setup required to get an app up and running in different languages.

## Run the app

```bash
# Install dependencies
npm i / yarn

# Run elm project
npm run elm

# Run react project
npm run react
```

## Notes / Learnings

- Super fast compile/reload times
- Minimal set dependencies needed
- Almost no setup required (either for react or elm app)
- Parcel also handles production ready build, tree shaking, image handling and the like.
