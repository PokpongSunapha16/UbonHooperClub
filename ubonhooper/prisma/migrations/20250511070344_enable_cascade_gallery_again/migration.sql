-- DropForeignKey
ALTER TABLE `gallery` DROP FOREIGN KEY `Gallery_user_id_fkey`;

-- DropIndex
DROP INDEX `Gallery_user_id_fkey` ON `gallery`;

-- AddForeignKey
ALTER TABLE `Gallery` ADD CONSTRAINT `Gallery_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
