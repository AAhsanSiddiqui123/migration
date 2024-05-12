-- Verify dashboard:schemas/dashboard_public/tables/actions/migration/update_action_name on pg

BEGIN;

SELECT name FROM dashboard_public.actions WHERE name IS NOT NULL LIMIT 1;

ROLLBACK;
