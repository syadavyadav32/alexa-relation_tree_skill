require 'ralyxa'
intent 'AddRelation' do
	name = request.slot_value("Name").downcase
	relatn = request.slot_value("Relation")

	find_relation = Relation.where(:name => name)
	if find_relation.empty?
		relation = Relation.create(:name => name, :relation_type => relatn)
		tell("#{name} is saved as your #{relatn}")
	else
		find_relation.update(:relation_type => relatn)
end