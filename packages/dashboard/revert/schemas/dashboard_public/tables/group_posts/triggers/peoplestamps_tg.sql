-- Revert: schemas/dashboard_public/tables/group_posts/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts DROP COLUMN created_by;
ALTER TABLE "dashboard_public".group_posts DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".group_posts;


COMMIT;  

