-- Revert: schemas/dashboard_public/tables/goal_explanations/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".goal_explanations FROM authenticated;
COMMIT;  

