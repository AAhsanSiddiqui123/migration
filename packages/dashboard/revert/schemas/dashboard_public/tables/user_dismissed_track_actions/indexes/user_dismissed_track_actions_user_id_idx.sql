-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/indexes/user_dismissed_track_actions_user_id_idx from pg

BEGIN;

DROP INDEX dashboard_public.user_dismissed_track_actions_user_id_idx;

COMMIT;
