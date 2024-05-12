-- Revert: schemas/dashboard_public/tables/form_questions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".form_questions FROM authenticated;
COMMIT;  

