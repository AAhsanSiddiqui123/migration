-- Revert: schemas/dashboard_public/tables/related_actions/triggers/related_actions_owner_id_immutable_tg from pg

BEGIN;
DROP TRIGGER related_actions_owner_id_immutable_tg ON "dashboard_public".related_actions;
COMMIT;  

