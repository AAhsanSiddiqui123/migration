-- Revert: schemas/dashboard_public/tables/form_types/alterations/alt0000001302 from pg

BEGIN;


ALTER TABLE "dashboard_public".form_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

