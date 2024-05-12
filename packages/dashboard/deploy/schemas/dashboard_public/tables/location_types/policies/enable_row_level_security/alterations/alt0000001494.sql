-- Deploy: schemas/dashboard_public/tables/location_types/policies/enable_row_level_security/alterations/alt0000001494 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/location_types/table

BEGIN;

ALTER TABLE "dashboard_public".location_types
    ENABLE ROW LEVEL SECURITY;
COMMIT;
