-- Revert schemas/dashboard_public/tables/user_action_weeks/table from pg

BEGIN;

DROP TABLE dashboard_public.user_action_weeks;

COMMIT;
