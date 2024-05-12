-- Revert: schemas/dashboard_public/tables/goals/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".goals FROM authenticated;
COMMIT;  

