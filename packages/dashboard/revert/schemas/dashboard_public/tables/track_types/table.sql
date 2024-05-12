-- Revert: schemas/dashboard_public/tables/track_types/table from pg

BEGIN;
DROP TABLE "dashboard_public".track_types;
COMMIT;  

