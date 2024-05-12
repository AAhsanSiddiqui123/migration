-- Revert: schemas/dashboard_public/tables/goals/alterations/alt0000000737 from pg

BEGIN;


ALTER TABLE "dashboard_public".goals
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

