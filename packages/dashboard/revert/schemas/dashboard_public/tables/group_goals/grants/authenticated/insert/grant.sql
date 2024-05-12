-- Revert: schemas/dashboard_public/tables/group_goals/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".group_goals FROM authenticated;
COMMIT;  

