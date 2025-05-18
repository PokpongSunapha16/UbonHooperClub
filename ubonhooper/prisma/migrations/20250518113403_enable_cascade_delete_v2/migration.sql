-- DropForeignKey
ALTER TABLE `notification` DROP FOREIGN KEY `Notification_receiverId_fkey`;

-- DropForeignKey
ALTER TABLE `notification` DROP FOREIGN KEY `Notification_senderId_fkey`;

-- DropForeignKey
ALTER TABLE `team` DROP FOREIGN KEY `Team_created_by_fkey`;

-- DropForeignKey
ALTER TABLE `teammember` DROP FOREIGN KEY `TeamMember_userId_fkey`;

-- DropIndex
DROP INDEX `Notification_receiverId_fkey` ON `notification`;

-- DropIndex
DROP INDEX `Notification_senderId_fkey` ON `notification`;

-- DropIndex
DROP INDEX `Team_created_by_fkey` ON `team`;

-- DropIndex
DROP INDEX `TeamMember_userId_fkey` ON `teammember`;

-- AddForeignKey
ALTER TABLE `Team` ADD CONSTRAINT `Team_created_by_fkey` FOREIGN KEY (`created_by`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TeamMember` ADD CONSTRAINT `TeamMember_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Notification` ADD CONSTRAINT `Notification_senderId_fkey` FOREIGN KEY (`senderId`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Notification` ADD CONSTRAINT `Notification_receiverId_fkey` FOREIGN KEY (`receiverId`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
