/* Copyright 2017 Robert San <robertsanseries@gmail.com>
*
* This program is free software: you can redistribute it
* and/or modify it under the terms of the GNU General Public License as
* published by the Free Software Foundation, either version 3 of the
* License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be
* useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
* Public License for more details.
*
* You should have received a copy of the GNU General Public License along
* with this program. If not, see http://www.gnu.org/licenses/.
*/

using Gtk;
using Granite;

namespace Hello {

    public class Hello : Granite.Application{

    	public static View.MainWindow main_window { get; private set; default = null; }

		construct {
			program_name = Constants.APP_NAME;
            exec_name = Constants.EXEC_NAME;

			app_years = Constants.APP_YEARS;
			app_icon = Constants.APP_ICON;
			app_launcher = Constants.APP_LAUNCHER;
			application_id = Constants.APP_ID;

			main_url = Constants.MAIN_URL;
			bug_url = Constants.BUG_URL;
			help_url = Constants.HELP_URL;
			translate_url = Constants.TRANSLATE_URL;

			about_authors = Constants.ABOUT_AUTHORS;
			about_documenters = Constants.ABOUT_DOCUMENTERS;
			about_artists = Constants.ABOUT_ARTISTS;
			about_comments = Constants.ABOUT_COMMENTS;
			about_license_type = Gtk.License.MIT_X11;

			build_data_dir = Build.DATADIR;
            build_pkg_data_dir = Build.PKGDATADIR;
            build_release_name = Build.RELEASE_NAME;
            build_version = Build.VERSION;
            build_version_info = Build.VERSION_INFO;

			var quit_action = new SimpleAction ("quit", null);
            quit_action.activate.connect (() => {
                if (main_window != null) {
                    main_window.destroy ();
                }
            });
            add_action (quit_action);
            add_accelerator ("<Control>q", "app.quit", null);
        }

       	public override void activate () {
       		if (main_window == null) {
	            main_window = new View.MainWindow ();

	            main_window.destroy.connect (() => {
	                main_window = null;
	            });

	            add_window (main_window);
	            main_window.show_all ();
        	}
        }
    }

    public static void main (string [] args) {
    	Gtk.init (ref args);
	    var application = new Hello ();
	    application.run(args);
    }
}