-- Revert dashboard:schemas/dashboard_public/tables/action_language_variations/migration/update_action_language_variations_name from pg

BEGIN;

    UPDATE dashboard_public.action_language_variations SET name=NULL;

COMMIT;
