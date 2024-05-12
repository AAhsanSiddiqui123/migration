-- Revert: schemas/dashboard_status_public/tables/app_steps/alterations/alt0000000141 from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_steps
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

