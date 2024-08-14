require_relative 'superheroes_ruby/get_characters'

def battle(hero_name, villain_name)
  characters = get_characters

  hero = nil
  villain = nil

  characters["items"].each do |character|
    if character["name"] == hero_name
      hero = character
    end
    if character["name"] == villain_name
      villain = character
    end
  end

  hero["score"] >= villain["score"] ? hero : villain
end

