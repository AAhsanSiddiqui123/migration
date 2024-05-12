-- Revert: schemas/dashboard_public/tables/zip_codes/alterations/alt0000000975 from pg

BEGIN;


ALTER TABLE "dashboard_public".zip_codes
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

