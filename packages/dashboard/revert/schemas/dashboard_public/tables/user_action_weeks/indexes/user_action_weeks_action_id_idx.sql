-- Revert schemas/dashboard_public/tables/user_action_weeks/indexes/user_action_weeks_action_id_idx from pg

BEGIN;

DROP INDEX dashboard_public.user_action_weeks_action_id_idx;

COMMIT;
