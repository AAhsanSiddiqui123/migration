-- Revert: schemas/dashboard_public/tables/actions/alterations/alt0000000756 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

