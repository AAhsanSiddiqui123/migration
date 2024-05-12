-- Revert: schemas/dashboard_public/tables/goal_explanations/columns/goal_id/alterations/alt0000000754 from pg

BEGIN;


ALTER TABLE "dashboard_public".goal_explanations 
    ALTER COLUMN goal_id DROP NOT NULL;


COMMIT;  

