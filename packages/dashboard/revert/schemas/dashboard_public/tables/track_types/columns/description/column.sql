-- Revert: schemas/dashboard_public/tables/track_types/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_types DROP COLUMN description;
COMMIT;  

