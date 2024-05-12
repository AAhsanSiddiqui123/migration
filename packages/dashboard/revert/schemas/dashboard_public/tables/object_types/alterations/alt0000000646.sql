-- Revert: schemas/dashboard_public/tables/object_types/alterations/alt0000000646 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

