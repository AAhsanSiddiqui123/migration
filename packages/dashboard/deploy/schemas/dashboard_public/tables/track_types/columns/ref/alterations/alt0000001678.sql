-- Deploy: schemas/dashboard_public/tables/track_types/columns/ref/alterations/alt0000001678 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_types/table
-- requires: schemas/dashboard_public/tables/track_types/columns/ref/column

BEGIN;
ALTER TABLE "dashboard_public".track_types ADD CONSTRAINT track_types_ref_chk CHECK (character_length(ref) <= 2048);
COMMIT;
