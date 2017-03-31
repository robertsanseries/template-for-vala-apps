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

	HelloView.MainWindow window = null;

    public class Hello : Granite.Application{

		construct {
			program_name = "hello-again";
			exec_name = "hello-again";

			app_years = "2017";
			app_icon = "hello";
			app_launcher = "hello.desktop";
			application_id = "net.launchpad.hello-again";

			main_url = "http://playtube.net";
			bug_url = "https://bugs.launchpad.net/hello-again";
			help_url = "http://hello-again.net/documentation";
			translate_url = "https://translations.launchpad.net/hello-again";

			about_authors = { "Your Name <you@emailaddress.com>" };
			about_documenters = { "Your Name <you@emailaddress.com>" };
			about_artists = { "Your Name <you@emailaddress.com>" };
			about_comments = "Proves that we can use Vala and Gtk";
			about_license_type = Gtk.License.GPL_3_0;

			SimpleAction quit_action = new SimpleAction ("quit", null);
            quit_action.activate.connect (() => {
                if (window != null) {
                    window.destroy ();
                }
            });
            add_action (quit_action);
        }

        public override void activate () {
            window = new HelloView.MainWindow ();
            this.add_window (window);
        }
    }

    public static int main (string [] args) {
    	var application = new Hello ();
    	return application.run (args);
    }
}