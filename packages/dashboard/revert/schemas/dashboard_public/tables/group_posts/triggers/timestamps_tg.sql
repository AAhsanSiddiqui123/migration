-- Revert: schemas/dashboard_public/tables/group_posts/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts DROP COLUMN created_at;
ALTER TABLE "dashboard_public".group_posts DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".group_posts;

COMMIT;  

