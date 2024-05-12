-- Revert: schemas/dashboard_public/tables/action_impacts/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".action_impacts FROM authenticated;
COMMIT;  

