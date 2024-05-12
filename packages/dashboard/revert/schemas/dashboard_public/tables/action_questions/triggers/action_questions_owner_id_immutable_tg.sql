-- Revert: schemas/dashboard_public/tables/action_questions/triggers/action_questions_owner_id_immutable_tg from pg

BEGIN;
DROP TRIGGER action_questions_owner_id_immutable_tg ON "dashboard_public".action_questions;
COMMIT;  

