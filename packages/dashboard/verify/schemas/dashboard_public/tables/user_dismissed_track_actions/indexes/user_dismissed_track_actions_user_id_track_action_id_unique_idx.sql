-- Verify dashboard:schemas/dashboard_public/tables/user_dismissed_track_actions/indexes/user_dismissed_track_actions_user_id_track_action_id_unique_idx on pg

BEGIN;

SELECT verify_index ('dashboard_public.user_dismissed_track_actions', 'user_dismissed_track_actions_user_id_track_action_id_unique_idx');

ROLLBACK;
