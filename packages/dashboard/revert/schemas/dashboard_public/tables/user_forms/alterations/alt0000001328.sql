-- Revert: schemas/dashboard_public/tables/user_forms/alterations/alt0000001328 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

