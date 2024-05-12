-- Revert: schemas/dashboard_public/tables/goals/triggers/insert_slg_slug from pg

BEGIN;
DROP TRIGGER insert_slg_slug ON "dashboard_public".goals;
COMMIT;  

