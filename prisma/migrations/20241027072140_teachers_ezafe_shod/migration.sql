/*
  Warnings:

  - A unique constraint covering the columns `[national_code]` on the table `Students` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[mobile]` on the table `Students` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateTable
CREATE TABLE "Teachers" (
    "id" SERIAL NOT NULL,
    "full_name" TEXT NOT NULL,
    "mobile" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Teachers_id_key" ON "Teachers"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Students_national_code_key" ON "Students"("national_code");

-- CreateIndex
CREATE UNIQUE INDEX "Students_mobile_key" ON "Students"("mobile");
