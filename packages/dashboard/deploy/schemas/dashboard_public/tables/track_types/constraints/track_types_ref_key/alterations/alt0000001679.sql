-- Deploy: schemas/dashboard_public/tables/track_types/constraints/track_types_ref_key/alterations/alt0000001679 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_types/constraints/track_types_ref_key/constraint

BEGIN;
COMMENT ON CONSTRAINT track_types_ref_key ON "dashboard_public".track_types IS E'@omit';
COMMIT;
