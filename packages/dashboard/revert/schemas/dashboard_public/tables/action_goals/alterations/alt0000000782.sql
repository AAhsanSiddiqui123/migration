-- Revert: schemas/dashboard_public/tables/action_goals/alterations/alt0000000782 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

