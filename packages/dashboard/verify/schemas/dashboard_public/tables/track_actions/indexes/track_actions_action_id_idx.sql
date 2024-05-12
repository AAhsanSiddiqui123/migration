-- Verify: schemas/dashboard_public/tables/track_actions/indexes/track_actions_action_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.track_actions', 'track_actions_action_id_idx');
COMMIT;  

