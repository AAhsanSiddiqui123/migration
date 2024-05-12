-- Deploy: schemas/dashboard_public/tables/group_post_comments/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_comments/table

BEGIN;

ALTER TABLE "dashboard_public".group_post_comments ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".group_post_comments ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".group_post_comments
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".group_post_comments (created_by);
CREATE INDEX ON "dashboard_public".group_post_comments (updated_by);
COMMIT;
