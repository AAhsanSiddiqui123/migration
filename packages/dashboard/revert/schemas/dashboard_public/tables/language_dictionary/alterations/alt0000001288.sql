-- Revert: schemas/dashboard_public/tables/language_dictionary/alterations/alt0000001288 from pg

BEGIN;


ALTER TABLE "dashboard_public".language_dictionary
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

