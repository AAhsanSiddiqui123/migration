-- Revert: schemas/dashboard_public/tables/impacts/alterations/alt0000000706 from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

