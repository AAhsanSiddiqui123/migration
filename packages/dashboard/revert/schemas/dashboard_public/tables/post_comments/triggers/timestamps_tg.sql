-- Revert: schemas/dashboard_public/tables/post_comments/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments DROP COLUMN created_at;
ALTER TABLE "dashboard_public".post_comments DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".post_comments;

COMMIT;  

