-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/indexes/user_dismissed_track_actions_owner_id_idx  on pg

BEGIN;

SELECT verify_index ('dashboard_public.user_dismissed_track_actions', 'user_dismissed_track_actions_owner_id_idx');

ROLLBACK;
