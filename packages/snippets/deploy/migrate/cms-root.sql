-- Deploy launchql-snippets:migrate/cms-root to pg

-- requires: migrate/admins
-- requires: migrate/add-gql-domain 
-- requires: migrate/copy-api-fn 

BEGIN;

DO $LQLMIGRATION$
  BEGIN

    PERFORM meta_public.meta_copy_api(
        'dashboard',
        'admin',
        'cms-root'
    );

    PERFORM meta_public.add_gql_domain(
        'dashboard',
        'cms-root',
        'db8d5353113c4dc2adb7402bd24ea1e8-root',
        'dbe.la',
        'https://dashboard-root.dbe.la'
    );

  END;
$LQLMIGRATION$;

COMMIT;
