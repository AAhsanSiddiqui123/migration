-- Verify dashboard:schemas/dashboard_public/tables/action_language_variations/migration/update_action_language_variations_name on pg

BEGIN;

SELECT name FROM dashboard_public.action_language_variations WHERE name IS NOT NULL LIMIT 1;

ROLLBACK;
