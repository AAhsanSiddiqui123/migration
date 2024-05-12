-- Revert: schemas/dashboard_public/tables/goals/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".goals FROM authenticated;
COMMIT;  

