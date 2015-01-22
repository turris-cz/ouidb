#!/bin/sh

#    Copyright (c) 2015, CZ.NIC, z.s.p.o. (http://www.nic.cz/)
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

FILE="$1"

if [ -z "$FILE" ]; then
	echo Usage error: "Provide path to OUI data file"
	exit 1
fi

cat "$FILE" | sed -n 's/^[[:space:]]*\([0-9a-fA-F]\{6\}\)[[:space:]]*(base 16)[[:space:]]*\(.*\)$/\1,\2/p'
