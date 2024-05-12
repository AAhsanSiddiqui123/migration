-- Revert: schemas/dashboard_public/tables/user_settings/columns/bounds/alterations/alt0000001610 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings
    ADD COLUMN bounds geometry (GeometryCollection, 4326);

COMMIT;  

