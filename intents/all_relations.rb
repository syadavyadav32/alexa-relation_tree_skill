require 'ralyxa'
intent "AllRelations" do
	relations = Relation.all

	relations.each do |relation|
		relation_str = ""
		relation_str = relation_str + "#{relation.name} is your #{relation.relation_type}. "
	end

	tell("#{relation_str}")

end