-- Revert: schemas/dashboard_public/tables/impacts_conditions/alterations/alt0000000724 from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

