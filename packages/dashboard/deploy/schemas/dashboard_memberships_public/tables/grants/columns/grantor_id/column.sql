-- Deploy: schemas/dashboard_memberships_public/tables/grants/columns/grantor_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".grants ADD COLUMN grantor_id uuid;
COMMIT;
