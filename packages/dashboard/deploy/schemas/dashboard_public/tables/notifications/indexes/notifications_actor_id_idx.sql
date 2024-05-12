-- Deploy: schemas/dashboard_public/tables/notifications/indexes/notifications_actor_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table
-- requires: schemas/dashboard_public/tables/notifications/columns/actor_id/column

BEGIN;
CREATE INDEX notifications_actor_id_idx ON "dashboard_public".notifications (actor_id);
COMMIT;
