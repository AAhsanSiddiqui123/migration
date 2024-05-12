-- Revert: schemas/dashboard_public/tables/data_tags/alterations/alt0000001267 from pg

BEGIN;


ALTER TABLE "dashboard_public".data_tags
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

