-- Revert: schemas/dashboard_public/tables/action_impacts/alterations/alt0000000965 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_impacts
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

