# (MIDAS) AWS Lambda Search Products

## How to run

1. Clone the repository:

```bash
git clone https://github.com/marcosparreiras/lambda-search-products.git
```

2. Rename the `./search/.env.sample` file to `./search/.env` and fill in the required information.

3. Rename the `template.sample.yml` file to `template.yaml` and fill in the `SearchProductsFunction Environment Variables`.

- DATABASE_URL

4. CD into `scrapper` folder and install the dependencies:

```bash
cd ./lambda-search-products/search && npm install
```

5. Run the tests with:

```bash
npm run test
```

6. build and deploy

```bash
sam build
sam deploy --guided
```

## Delete

```bash
sam delete
```
