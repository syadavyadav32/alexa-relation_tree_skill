require 'ralyxa'
intent "NameRelation" do
	name = request.slot_value("Name").downcase
	relation = Relation.where(:name => name)

	if relation.empty?
		tell("Sorry you don't have that much relation in this dangerous world")
	else
		tell("#{relation[0].name} is your #{relation[0].relation_type}")
	end
end