-- Revert: schemas/dashboard_public/tables/global_languages/alterations/alt0000001282 from pg

BEGIN;


ALTER TABLE "dashboard_public".global_languages
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

