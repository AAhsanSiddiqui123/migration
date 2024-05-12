-- Revert: schemas/dashboard_public/tables/goal_explanations/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".goal_explanations FROM authenticated;
COMMIT;  

