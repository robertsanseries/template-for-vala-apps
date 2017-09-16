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

namespace App.Utils {

	/**
     * The {@code URLUtil} class is responsible for manipulating urls.
     *
     * @since 0.1.0
     */
    public class URLUtil {

    	/**
	     * Check if url is valid.
	     *
	     * Exemple:
	     * > URLUtil.check_url_with_regex("https://elementary.io");
	     * 
	     * @param {@code string} url 
	     */
		public static bool check_url_with_regex (string url) {
			try {
	            var regex = new Regex ("""(http|ftp|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/~+#-]*[\w@?^=%&amp;/~+#-])?""");
	            
	            if (!regex.match (url)) {
		            return false;
		        }

	        } catch (RegexError e) {
	            GLib.message("Erro: %s", e.message);
	        }

	        return true;
	    }
	}
}