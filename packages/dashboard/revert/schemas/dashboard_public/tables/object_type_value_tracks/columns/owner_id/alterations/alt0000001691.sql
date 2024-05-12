-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/columns/owner_id/alterations/alt0000001691 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_value_tracks 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

