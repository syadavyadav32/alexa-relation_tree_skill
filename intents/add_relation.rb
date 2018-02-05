require 'ralyxa'
intent 'AddRelation' do
	name = request.slot_value("Name").downcase
	relatn = request.slot_value("Relation")

	find_relation = Relation.where(:name => name)
	if find_relation.empty?
		relation = Relation.create(:name => name, :relation_type => relatn)
		tell("#{relation.name} is saved as your #{relation.relation_type}")
	else
		find_relation.update(:relation_type => relatn)
		tell("#{find_relation[0].name} is now saved as your #{find_relation[0].relation_type}")
	end
end