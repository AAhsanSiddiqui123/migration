-- Revert: schemas/dashboard_public/tables/user_questions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_questions FROM authenticated;
COMMIT;  

