namespace :dev do

  DEFAULT_PASSWORD = 123456

  desc "Configuring development enviroment"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Deleting DB...") { %x(rails db:drop) }
      show_spinner("Create DB...") { %x(rails db:create) }
      show_spinner("Migrating DB...") { %x(rails db:migrate) }
      show_spinner("Cadastrando o adminstrador padrão...") { %x(rails dev:add_default_admin) }
      show_spinner("Cadastrando o usuário padrão...") { %x(rails dev:add_default_user) }
    else
      puts "You are not in the development environment"
    end
  end

  desc "Adiciona o administrador padrão"
  task add_default_admin: :environment do 
    Admin.create!(
      email: "admin@admin.com",
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  desc "Adiciona o usuário padrão"
  task add_default_user: :environment do 
    User.create!(
      email: "user@user.com",
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  private

  def show_spinner(msg_start, msg_end = "successful")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
