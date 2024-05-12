-- Revert: schemas/dashboard_public/tables/groups/alterations/alt0000000270 from pg

BEGIN;


ALTER TABLE "dashboard_public".groups
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

