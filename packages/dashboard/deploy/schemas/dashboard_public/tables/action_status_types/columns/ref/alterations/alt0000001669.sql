-- Deploy: schemas/dashboard_public/tables/action_status_types/columns/ref/alterations/alt0000001669 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_status_types/table
-- requires: schemas/dashboard_public/tables/action_status_types/columns/ref/column

BEGIN;
ALTER TABLE "dashboard_public".action_status_types ADD CONSTRAINT action_status_types_ref_chk CHECK (character_length(ref) <= 2048);
COMMIT;
