-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/triggers/user_dismissed_track_actions_track_action_id_immutable_tg  on pg

BEGIN;


SELECT verify_trigger ('dashboard_public.user_dismissed_track_actions_track_action_id_immutable_tg');

ROLLBACK;
