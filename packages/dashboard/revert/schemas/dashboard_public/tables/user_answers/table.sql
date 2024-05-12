-- Revert: schemas/dashboard_public/tables/user_answers/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_answers;
COMMIT;  

