-- Verify schemas/dashboard_public/tables/progress_level_images/policies/auth_del  on pg

BEGIN;

SELECT verify_policy ('auth_del', 'dashboard_public.progress_level_images');


ROLLBACK;
