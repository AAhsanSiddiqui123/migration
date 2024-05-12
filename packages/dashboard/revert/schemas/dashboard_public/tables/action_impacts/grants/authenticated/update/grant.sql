-- Revert: schemas/dashboard_public/tables/action_impacts/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".action_impacts FROM authenticated;
COMMIT;  

