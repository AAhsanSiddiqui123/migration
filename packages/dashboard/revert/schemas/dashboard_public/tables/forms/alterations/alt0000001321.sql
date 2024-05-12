-- Revert: schemas/dashboard_public/tables/forms/alterations/alt0000001321 from pg

BEGIN;


ALTER TABLE "dashboard_public".forms
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

