-- Revert: schemas/dashboard_public/tables/group_goals/alterations/alt0000001142 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

