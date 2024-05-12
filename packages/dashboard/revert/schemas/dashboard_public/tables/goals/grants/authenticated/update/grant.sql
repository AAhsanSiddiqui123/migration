-- Revert: schemas/dashboard_public/tables/goals/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".goals FROM authenticated;
COMMIT;  

