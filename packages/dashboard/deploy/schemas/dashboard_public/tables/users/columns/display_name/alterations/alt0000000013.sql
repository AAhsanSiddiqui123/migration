-- Deploy: schemas/dashboard_public/tables/users/columns/display_name/alterations/alt0000000013 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/display_name/column

BEGIN;
ALTER TABLE "dashboard_public".users ADD CONSTRAINT users_display_name_chk CHECK (character_length(display_name) <= 256);
COMMIT;
