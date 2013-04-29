## This is the rakegem gemspec template. Make sure you read and understand
## all of the comments. Some sections require modification, and others can
## be deleted if you don't need them. Once you understand the contents of
## this file, feel free to delete any comments that begin with two hash marks.
## You can find comprehensive Gem::Specification documentation, at
## http://docs.rubygems.org/read/chapter/20
Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'football-manager'
  s.version           = '0.2.0'
  s.date              = '2012-06-30'
  s.rubyforge_project = 'football-manager'

  ## Make sure your summary is short. The description may be as long
  ## as you like.
  s.summary     = "Picks two fair teams based on player skill"
  s.description = "Picks two fair teams based on player skill"

  ## List the primary authors. If there are a bunch of authors, it's probably
  ## better to set the email to an email list or something. If you don't have
  ## a custom homepage, consider using your GitHub URL or the like.
  s.authors  = ["James Shipton"]
  s.email    = 'ionysis@gmail.com'
  s.homepage = 'https://github.com/jamesshipton/football-manager'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  ## This sections is only necessary if you have C extensions.
  # s.require_paths << 'ext'
  # s.extensions = %w[ext/extconf.rb]

  ## If your gem includes any executables, list them here.
  s.executables = ["football-manager"]

  ## Specify any RDoc options here. You'll want to add your README and
  ## LICENSE files to the extra_rdoc_files list.
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md]

  ## List your runtime dependencies here. Runtime dependencies are those
  ## that are needed for an end user to actually USE your code.
  # s.add_dependency('DEPNAME', [">= 1.1.0", "< 2.0.0"])

  ## List your development dependencies here. Development dependencies are
  ## those that are only needed during development
  s.add_development_dependency  'aruba', '~> 0.4'
  s.add_development_dependency  'cucumber', '~>1.1'
  s.add_development_dependency  'rake'

  ## Leave this section as-is. It will be automatically generated from the
  ## contents of your Git repository via the gemspec task. DO NOT REMOVE
  ## THE MANIFEST COMMENTS, they are used as delimiters by the task.
  # = MANIFEST =
  s.files = %w[
    Gemfile
    Gemfile.lock
    README.md
    Rakefile
    bin/football-manager
    features/choose_teams.feature
    features/step-definitions/choose_teams_steps.rb
    features/support/aruba.rb
    features/support/choose_teams_support.rb
    football-manager.gemspec
    lib/football-manager.rb
    lib/football-manager/custom_exceptions.rb
    lib/football-manager/game.rb
    lib/football-manager/i_o_helper.rb
    lib/football-manager/player.rb
    lib/football-manager/players_creator.rb
    lib/football-manager/team.rb
    lib/football-manager/team_picker.rb
    lib/football-manager/team_sheet_creator.rb
    spec/football-manager/game_spec.rb
    spec/football-manager/player_spec.rb
    spec/football-manager/players_creator_spec.rb
    spec/football-manager/team_picker_spec.rb
    spec/football-manager/team_sheet_creator_spec.rb
    spec/football-manager/team_spec.rb
    spec/spec_helper.rb
  ]
  # = MANIFEST =

  ## Test files will be grabbed from the file list. Make sure the path glob
  ## matches what you actually use.
  s.test_files = s.files.select { |path| path =~ /spec_.*\.rb/ }
end
