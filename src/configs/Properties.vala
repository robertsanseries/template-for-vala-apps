/*
* Copyright (c) 2017 Robert San <robertsanseries@gmail.com>
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*/

namespace App.Configs {

    /**
     * The {@code Properties} class is responsible for defining all 
     * the texts that are displayed in the application and must be translated.
     *
     * @since 0.1.0
     */
    public class Properties {
        
        public abstract const string TITLE_HEADER_BAR = _("App Template");
        public abstract const string CLOSE = _("Close");
        public abstract const string WELCOME = _("Welcome");
        public abstract const string THIS_APP_JUST_TEMPLATE = _("This app is just a template");
        public abstract const string PREFERENCES = _("Preferences");
        public abstract const string SETTINGS = _("Settings");
    }
}