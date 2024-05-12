-- Revert: schemas/dashboard_public/tables/user_answers/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_answers FROM authenticated;
COMMIT;  

