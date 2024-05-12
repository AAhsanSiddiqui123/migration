-- Revert: schemas/dashboard_public/tables/user_questions/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_questions;
COMMIT;  

