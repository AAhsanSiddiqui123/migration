-- Revert: schemas/dashboard_public/tables/action_impacts/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".action_impacts FROM authenticated;
COMMIT;  

