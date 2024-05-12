-- Revert: schemas/dashboard_public/tables/goal_explanations/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".goal_explanations FROM authenticated;
COMMIT;  

