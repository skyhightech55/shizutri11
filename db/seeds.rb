business = Category.create(name: 'ビジネス')
business_children_array = ['金融', '経済', '経営', 'マーケティング']
business_grandchildren_array = [
  ['株', '為替', '税金'], # 金融の子
  ['日本経済', '国際経済'], # 経済の子
  ['経営学', '戦略・管理', '起業・開業'], # 経営の子
  ['広告', '営業', '開発'] # マーケティングの子
]

business_children_array.each_with_index do |children, index|
  children = business.children.create(name: children)
  business_grandchildren_array[index].each do |grandchildren|
    children.children.create(name: grandchildren)
  end
end