-- Revert: schemas/dashboard_public/tables/user_characteristics/alterations/alt0000000586 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

