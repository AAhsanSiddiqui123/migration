-- Deploy: schemas/dashboard_public/tables/notifications/columns/entity_type/alterations/alt0000001171 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/columns/entity_type/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".notifications.entity_type IS E'e.g., Post, Comment, Action, etc.';
COMMIT;
