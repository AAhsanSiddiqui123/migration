-- Revert: schemas/dashboard_public/tables/track_types/triggers/update_inf_ref from pg

BEGIN;
DROP TRIGGER update_inf_ref ON "dashboard_public".track_types;
COMMIT;  

