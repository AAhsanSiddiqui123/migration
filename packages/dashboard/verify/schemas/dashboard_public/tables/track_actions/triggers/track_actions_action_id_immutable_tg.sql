-- Verify: schemas/dashboard_public/tables/track_actions/triggers/track_actions_action_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.track_actions_action_id_immutable_tg');
COMMIT;  

