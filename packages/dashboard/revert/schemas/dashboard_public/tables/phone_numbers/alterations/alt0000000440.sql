-- Revert: schemas/dashboard_public/tables/phone_numbers/alterations/alt0000000440 from pg

BEGIN;


ALTER TABLE "dashboard_public".phone_numbers
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

