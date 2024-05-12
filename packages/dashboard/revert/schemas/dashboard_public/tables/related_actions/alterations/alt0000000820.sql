-- Revert: schemas/dashboard_public/tables/related_actions/alterations/alt0000000820 from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

