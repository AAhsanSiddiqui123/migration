-- Revert: schemas/dashboard_public/tables/question_types/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".question_types FROM authenticated;
COMMIT;  

