-- Deploy: schemas/dashboard_public/tables/group_post_reactions/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_reactions/table

BEGIN;

ALTER TABLE "dashboard_public".group_post_reactions ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".group_post_reactions ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".group_post_reactions
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".group_post_reactions (created_by);
CREATE INDEX ON "dashboard_public".group_post_reactions (updated_by);
COMMIT;
