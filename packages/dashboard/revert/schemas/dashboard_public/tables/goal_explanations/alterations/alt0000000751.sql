-- Revert: schemas/dashboard_public/tables/goal_explanations/alterations/alt0000000751 from pg

BEGIN;


ALTER TABLE "dashboard_public".goal_explanations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

