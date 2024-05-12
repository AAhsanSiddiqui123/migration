-- Deploy: schemas/dashboard_public/tables/notifications/indexes/notifications_recipient_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table
-- requires: schemas/dashboard_public/tables/notifications/columns/recipient_id/column

BEGIN;
CREATE INDEX notifications_recipient_id_idx ON "dashboard_public".notifications (recipient_id);
COMMIT;
