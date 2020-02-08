# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
BenefitCategory.destroy_all
must = BenefitCategory.create!({nama: 'Must', code: 1})
mustandclaimable = BenefitCategory.create!({nama: 'Must and Claimable', code: 2})
probablyandclaimable = BenefitCategory.create!({nama: 'Probably and Claimable', code: 3})
extra = BenefitCategory.create!({nama: 'Extra', code: 4})
flexibleandclaimable = BenefitCategory.create!({nama: 'Flexible and Claimable', code: 5})

Benefit.destroy_all
benefit1 = Benefit.create!(nama: 'Fasilitas Kesehatan', benefit_category: mustandclaimable)
benefit2 = Benefit.create!(nama: 'Medical Check Up', benefit_category: probablyandclaimable)
benefit3 = Benefit.create!(nama: 'Papsmear', benefit_category: probablyandclaimable)
benefit4 = Benefit.create!(nama: 'Asuransi Jiwa', benefit_category: must)
benefit5 = Benefit.create!(nama: 'Asuransi Kecelakaan', benefit_category: must)
benefit6 = Benefit.create!(nama: 'Pinjaman', benefit_category: flexibleandclaimable)
benefit7 = Benefit.create!(nama: 'Transportasi Lembur', benefit_category: flexibleandclaimable)
benefit8 = Benefit.create!(nama: 'Susu', benefit_category: extra)
benefit9 = Benefit.create!(nama: 'Akomodasi Dinas', benefit_category: mustandclaimable)
benefit10 = Benefit.create!(nama: 'Cuti', benefit_category: flexibleandclaimable)
benefit11 = Benefit.create!(nama: 'Beasiswa', benefit_category: extra)
benefit12 = Benefit.create!(nama: 'Rekreasi', benefit_category: mustandclaimable)

Plan.destroy_all
plan1 = Plan.create!(nama: 'Jupiter')
plan2 = Plan.create!(nama: 'Venus')
plan3 = Plan.create!(nama: 'Neptune')

BenefitsPlan.destroy_all
BenefitsPlan.create!(plan: plan1, benefit: benefit5, jumlah: 0)
BenefitsPlan.create!(plan: plan1, benefit: benefit4, jumlah: 0)
BenefitsPlan.create!(plan: plan1, benefit: benefit1, jumlah: 0)
BenefitsPlan.create!(plan: plan1, benefit: benefit9, jumlah: 0)
BenefitsPlan.create!(plan: plan1, benefit: benefit6, jumlah: 1)
BenefitsPlan.create!(plan: plan1, benefit: benefit7, jumlah: 0)
BenefitsPlan.create!(plan: plan1, benefit: benefit10, jumlah: 1)

BenefitsPlan.create!(plan: plan2, benefit: benefit5, jumlah: 0)
BenefitsPlan.create!(plan: plan2, benefit: benefit4, jumlah: 0)
BenefitsPlan.create!(plan: plan2, benefit: benefit1, jumlah: 0)
BenefitsPlan.create!(plan: plan2, benefit: benefit9, jumlah: 0)
BenefitsPlan.create!(plan: plan2, benefit: benefit6, jumlah: 3)
BenefitsPlan.create!(plan: plan2, benefit: benefit7, jumlah: 0)
BenefitsPlan.create!(plan: plan2, benefit: benefit10, jumlah: 2)

BenefitsPlan.create!(plan: plan3, benefit: benefit5, jumlah: 0)
BenefitsPlan.create!(plan: plan3, benefit: benefit4, jumlah: 0)
BenefitsPlan.create!(plan: plan3, benefit: benefit1, jumlah: 0)
BenefitsPlan.create!(plan: plan3, benefit: benefit9, jumlah: 0)
BenefitsPlan.create!(plan: plan3, benefit: benefit2, jumlah: 0)
BenefitsPlan.create!(plan: plan3, benefit: benefit3, jumlah: 0)
BenefitsPlan.create!(plan: plan3, benefit: benefit6, jumlah: 2)
BenefitsPlan.create!(plan: plan3, benefit: benefit7, jumlah: 0)
BenefitsPlan.create!(plan: plan3, benefit: benefit10, jumlah: 3)

Pangkat.destroy_all
es1 = Pangkat.create!(nama: 'Eselon 1', code: 1)
es2 = Pangkat.create!(nama: 'Eselon 2', code: 2)
es3 = Pangkat.create!(nama: 'Eselon 3', code: 3)
es4 = Pangkat.create!(nama: 'Eselon 4', code: 4)
es5 = Pangkat.create!(nama: 'Eselon 5', code: 5)
es6 = Pangkat.create!(nama: 'Eselon 6', code: 6)
es7 = Pangkat.create!(nama: 'Eselon 7', code: 7)

User.destroy_all
User.create!(pangkat: es4, nama: 'Miftahun Najat', tanggal_masuk: Time.now, email: 'mifta', password: '123')