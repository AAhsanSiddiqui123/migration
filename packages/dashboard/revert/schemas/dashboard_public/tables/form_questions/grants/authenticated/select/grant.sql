-- Revert: schemas/dashboard_public/tables/form_questions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".form_questions FROM authenticated;
COMMIT;  

