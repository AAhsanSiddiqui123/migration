-- Revert: schemas/dashboard_public/tables/question_values/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".question_values FROM authenticated;
COMMIT;  

