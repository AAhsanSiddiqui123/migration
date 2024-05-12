-- Revert: schemas/dashboard_public/tables/form_questions/table from pg

BEGIN;
DROP TABLE "dashboard_public".form_questions;
COMMIT;  

