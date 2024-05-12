-- Revert: schemas/dashboard_public/tables/goal_explanations/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".goal_explanations FROM authenticated;
COMMIT;  

