-- Revert: schemas/dashboard_public/tables/track_actions/triggers/track_actions_owner_id_immutable_tg from pg

BEGIN;
DROP TRIGGER track_actions_owner_id_immutable_tg ON "dashboard_public".track_actions;
COMMIT;  

