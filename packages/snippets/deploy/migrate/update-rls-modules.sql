-- Deploy launchql-snippets:migrate/update-rls-modules to pg

BEGIN;

SELECT meta_public.patch_meta_copy_api(
    'dashboard',
    'public',
    'cms'
);

SELECT meta_public.patch_meta_copy_api(
    'dashboard-stage',
    'public',
    'cms-stage'
);

COMMIT;
