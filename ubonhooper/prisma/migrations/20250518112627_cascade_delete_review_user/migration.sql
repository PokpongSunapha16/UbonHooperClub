-- DropForeignKey
ALTER TABLE `review` DROP FOREIGN KEY `Review_reviewed_user_id_fkey`;

-- DropForeignKey
ALTER TABLE `review` DROP FOREIGN KEY `Review_reviewer_user_id_fkey`;

-- DropIndex
DROP INDEX `Review_reviewer_user_id_fkey` ON `review`;

-- AddForeignKey
ALTER TABLE `Review` ADD CONSTRAINT `Review_reviewed_user_id_fkey` FOREIGN KEY (`reviewed_user_id`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Review` ADD CONSTRAINT `Review_reviewer_user_id_fkey` FOREIGN KEY (`reviewer_user_id`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
