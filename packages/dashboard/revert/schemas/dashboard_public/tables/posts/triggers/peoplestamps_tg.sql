-- Revert: schemas/dashboard_public/tables/posts/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".posts DROP COLUMN created_by;
ALTER TABLE "dashboard_public".posts DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".posts;


COMMIT;  

