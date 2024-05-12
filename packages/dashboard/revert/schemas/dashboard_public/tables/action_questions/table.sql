-- Revert: schemas/dashboard_public/tables/action_questions/table from pg

BEGIN;
DROP TABLE "dashboard_public".action_questions;
COMMIT;  

