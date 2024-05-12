-- Deploy launchql-snippets:migrate/cms-root-stage to pg

-- requires: migrate/admins
-- requires: migrate/add-gql-domain 
-- requires: migrate/copy-api-fn 

BEGIN;

DO $LQLMIGRATION$
  BEGIN

    PERFORM meta_public.meta_copy_api(
        'dashboard-stage',
        'admin',
        'cms-root-stage'
    );

    PERFORM meta_public.add_gql_domain(
        'dashboard-stage',
        'cms-root-stage',
        'db8d5353113c4dc2adb7402bd24ea1e8-root-stage',
        'dbe.la',
        'https://dashboard-root-stage.dbe.la'
    );

  END;
$LQLMIGRATION$;

COMMIT;
