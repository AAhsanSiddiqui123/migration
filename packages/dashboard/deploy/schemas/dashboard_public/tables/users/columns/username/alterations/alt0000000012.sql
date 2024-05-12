-- Deploy: schemas/dashboard_public/tables/users/columns/username/alterations/alt0000000012 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/username/column

BEGIN;
ALTER TABLE "dashboard_public".users ADD CONSTRAINT users_username_chk CHECK (character_length(username) <= 256);
COMMIT;
