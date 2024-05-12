-- Deploy migrate/cms to pg

-- requires: migrate/admins
-- requires: migrate/add-gql-domain 
-- requires: migrate/copy-api-fn 

BEGIN;

DO $LQLMIGRATION$
  BEGIN

    PERFORM meta_public.meta_copy_api(
        'dashboard',
        'public',
        'cms'
    );

    PERFORM meta_public.add_gql_domain(
        'dashboard',
        'cms',
        'db8d5353113c4dc2adb7402bd24ea1e8',
        'dbe.la',
        'https://dashboard.dbe.la'
    );

  END;
$LQLMIGRATION$;

COMMIT;
