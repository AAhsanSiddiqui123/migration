-- Revert: schemas/dashboard_public/tables/tags/alterations/alt0000000980 from pg

BEGIN;


ALTER TABLE "dashboard_public".tags
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

