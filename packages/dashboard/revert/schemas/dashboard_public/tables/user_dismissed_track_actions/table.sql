-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/table from pg

BEGIN;

DROP TABLE dashboard_public.user_dismissed_track_actions;

COMMIT;
