# syncing airtable

1. get data from airtable

```
yarn all
```

make sure you've added all the steps into the `yarn all`, as it's doing `yarn goals`, etc, etc

2. builds the SQL from the downloaded JSON files from airtable

cd into `./csv` and run `make`

3. generate the fixtures

```
yarn fixtures
```

4. deploy!

locally,

```
make seed 
```

or in production, do the thing...