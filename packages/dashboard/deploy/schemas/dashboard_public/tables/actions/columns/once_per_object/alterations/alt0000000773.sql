-- Deploy: schemas/dashboard_public/tables/actions/columns/once_per_object/alterations/alt0000000773 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/columns/once_per_object/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".actions.once_per_object IS E'if is_recurring is true';
COMMIT;
