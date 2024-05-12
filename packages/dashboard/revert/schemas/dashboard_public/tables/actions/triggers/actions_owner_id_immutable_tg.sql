-- Revert: schemas/dashboard_public/tables/actions/triggers/actions_owner_id_immutable_tg from pg

BEGIN;
DROP TRIGGER actions_owner_id_immutable_tg ON "dashboard_public".actions;
COMMIT;  

