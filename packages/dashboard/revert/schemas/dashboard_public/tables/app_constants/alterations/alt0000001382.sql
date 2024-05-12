-- Revert: schemas/dashboard_public/tables/app_constants/alterations/alt0000001382 from pg

BEGIN;


ALTER TABLE "dashboard_public".app_constants
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

