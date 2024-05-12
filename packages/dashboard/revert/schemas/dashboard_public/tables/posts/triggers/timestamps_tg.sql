-- Revert: schemas/dashboard_public/tables/posts/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".posts DROP COLUMN created_at;
ALTER TABLE "dashboard_public".posts DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".posts;

COMMIT;  

