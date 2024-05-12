-- Revert: schemas/dashboard_public/tables/action_impacts/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".action_impacts FROM authenticated;
COMMIT;  

