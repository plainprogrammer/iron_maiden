require 'rubygems/command_manager'
  
Gem::CommandManager.instance.register_command :torture

class Gem::Commands::TortureCommand < Gem::Command
  def initialize
    super 'torture', "Prepares a Rack application for deployment with IronRuby with the IIS Rack Handler"

    add_option('-p', '--public PATH', 'Path to your Rack app\'s public document root')
  end
  
  def execute
    explicit_path = get_one_optional_argument || './public'
    
    unless File.directory? explicit_path
      raise Gem::Exception, "supplied public path, or default ('public'), does not exist"
    end
    
    copy_ironruby_rack_template(explicit_path)
    puts follow_up_directions
  end
  
  private
  
    def copy_ironruby_rack_template(path)
      # TODO: Copy the template files into the designated folder.
    end
  
    def follow_up_directions
      <<-EOF
      ================================================================================
      |            Your app has been successfully tortured by IronMaiden!            |
      ================================================================================
      
      The Web.config file added into your application's public root is setup to work
      with Microsoft IIS 6 and 7. If you are using IIS 6 there are two additional
      steps you will need to take for deployment.
      
      First, in your application's deployment folder/site you need to open up the
      properties, go to the ASP.NET tab and make sure the version is set to 2.x or
      newer.
      
      Second, also in your application's deployment folder/site properties you need to
      add a wildcard handler. To do so ...
      
      
      - Thank you for using IronMaiden
      EOF
    end
end