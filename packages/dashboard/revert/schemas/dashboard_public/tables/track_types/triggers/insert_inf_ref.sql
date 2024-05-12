-- Revert: schemas/dashboard_public/tables/track_types/triggers/insert_inf_ref from pg

BEGIN;
DROP TRIGGER insert_inf_ref ON "dashboard_public".track_types;
COMMIT;  

