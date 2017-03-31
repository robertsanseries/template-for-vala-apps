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

namespace HelloView {

	public class MainWindow : Gtk.Window {

		public MainWindow () {
			Gtk.Window  window = new Gtk.Window ();
	    	window.title = "Hello Again";
	    	window.set_position (Gtk.WindowPosition.CENTER);
	    	window.set_default_size (500, 500);
	    	window.destroy.connect (Gtk.main_quit);
	    	window.show_all ();
	    	Gtk.main ();
			
		}

	}
	
}