-- Revert: schemas/dashboard_public/tables/object_type_attributes/alterations/alt0000000661 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_attributes
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

