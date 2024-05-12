-- Deploy launchql-snippets:migrate/cms-stage to pg

-- requires: migrate/admins
-- requires: migrate/add-gql-domain 
-- requires: migrate/copy-api-fn 

BEGIN;

DO $LQLMIGRATION$
  BEGIN

    PERFORM meta_public.meta_copy_api(
        'dashboard-stage',
        'public',
        'cms-stage'
    );

    PERFORM meta_public.add_gql_domain(
        'dashboard-stage',
        'cms-stage',
        'db8d5353113c4dc2adb7402bd24ea1e8-stage',
        'dbe.la',
        'https://dashboard-stage.dbe.la'
    );

  END;
$LQLMIGRATION$;

COMMIT;
