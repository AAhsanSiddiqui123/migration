-- Revert: schemas/dashboard_public/tables/impacts_conditions/triggers/impacts_conditions_owner_id_immutable_tg from pg

BEGIN;
DROP TRIGGER impacts_conditions_owner_id_immutable_tg ON "dashboard_public".impacts_conditions;
COMMIT;  

