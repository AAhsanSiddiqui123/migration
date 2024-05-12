-- Revert: schemas/dashboard_public/tables/form_questions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".form_questions FROM authenticated;
COMMIT;  

