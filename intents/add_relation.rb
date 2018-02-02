require 'ralyxa'
intent 'AddRelation' do
	name = request.slot_value("Name").downcase
	relatn = request.slot_value("Relation")
	relation = Relation.new(:name => name, :relation_type => relatn)
	relation.save
	respond("#{name} is saved as your #{relatn}")
end