-- Deploy: schemas/dashboard_public/tables/group_posts/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table

BEGIN;

ALTER TABLE "dashboard_public".group_posts ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".group_posts ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".group_posts
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".group_posts (created_by);
CREATE INDEX ON "dashboard_public".group_posts (updated_by);
COMMIT;
