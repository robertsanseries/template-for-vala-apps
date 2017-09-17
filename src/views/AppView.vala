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

using App.Widgets;
using App.Configs;

namespace App.Views {

	/**
     * The {@code AppView} class.
     *
     * @since 0.1.0
     */
	public class AppView : Gtk.Grid {

        private Gtk.ApplicationWindow app;
        public HeaderBar headerbar;

		/**
         * Constructs a new {@code AppView} object.
         */
		public AppView (Gtk.ApplicationWindow app) {
            this.app = app;
            this.app.set_default_size (700, 600);
            this.app.set_size_request (700, 600);
            this.app.deletable = true;
            this.app.resizable = true;
			
            this.headerbar = new HeaderBar ();
			this.app.set_titlebar (this.headerbar);

            var welcome = new Granite.Widgets.Welcome (
              Properties.WELCOME,
              Properties.THIS_APP_JUST_TEMPLATE
            );

            this.add (welcome);
		}
	}
}