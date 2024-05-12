-- Revert: schemas/dashboard_public/tables/group_goals/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".group_goals FROM authenticated;
COMMIT;  

