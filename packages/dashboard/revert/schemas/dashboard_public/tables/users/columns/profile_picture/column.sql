-- Revert: schemas/dashboard_public/tables/users/columns/profile_picture/column from pg

BEGIN;


ALTER TABLE "dashboard_public".users DROP COLUMN profile_picture;
COMMIT;  

