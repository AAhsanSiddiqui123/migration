-- Revert: schemas/dashboard_public/tables/object_type_language_variations/alterations/alt0000001473 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_language_variations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

