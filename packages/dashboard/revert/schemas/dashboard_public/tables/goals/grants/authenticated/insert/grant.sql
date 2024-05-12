-- Revert: schemas/dashboard_public/tables/goals/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".goals FROM authenticated;
COMMIT;  

