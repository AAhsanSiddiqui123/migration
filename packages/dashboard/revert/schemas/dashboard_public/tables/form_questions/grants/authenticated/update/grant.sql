-- Revert: schemas/dashboard_public/tables/form_questions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".form_questions FROM authenticated;
COMMIT;  

