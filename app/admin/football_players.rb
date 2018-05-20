ActiveAdmin.register Football::Player do
  menu parent: 'Football', label: 'Players'

  index as: :grid, columns: 3 do |player|
    div for: player, style: 'border: 1px solid #ccc; padding: 10px;' do
      div for: header, style: 'display: flex; justify-content: space-between; align-items: center;' do
        h3 link_to "#{player.first_name} #{player.last_name}", admin_football_player_path(player)
        div image_tag player.photo_url, width: 100, height: 100, style: 'margin-left: 16px;' if player.photo_url
      end
      div for: body do
        div "Age: #{player.age}"
        div "Value: #{player.value}"
        div "Salary: #{player.salary}"
        div "Experience: #{player.experience}"
        div "Form: #{player.form}"
      end
      hr
      h3 'Skills'
      table style: 'border: 1px solid black;' do
        tr do
          td "Stamina: #{player.stamina}", style: 'border: 1px solid black; padding: 8px;'
          td "Goalkeeping: #{player.goalkeeping}", style: 'border: 1px solid black; padding: 8px;'
        end
        tr do
          td "Pace: #{player.pace}", style: 'border: 1px solid black; padding: 8px;'
          td "Defending: #{player.defending}", style: 'border: 1px solid black; padding: 8px;'
        end
        tr do
          td "Dribbling: #{player.dribbling}", style: 'border: 1px solid black; padding: 8px;'
          td "Intelligence: #{player.intelligence}", style: 'border: 1px solid black; padding: 8px;'
        end
        tr do
          td "Passing: #{player.passing}", style: 'border: 1px solid black; padding: 8px;'
          td "Shooting: #{player.shooting}", style: 'border: 1px solid black; padding: 8px;'
        end
      end
    end
  end
end
