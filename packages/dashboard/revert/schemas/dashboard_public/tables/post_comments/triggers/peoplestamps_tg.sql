-- Revert: schemas/dashboard_public/tables/post_comments/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments DROP COLUMN created_by;
ALTER TABLE "dashboard_public".post_comments DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".post_comments;


COMMIT;  

