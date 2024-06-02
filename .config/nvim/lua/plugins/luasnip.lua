local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node

local year = os.date('%Y')

ls.add_snippets('all', {
    s('gpl3', {
        t({'/*'}),
        t({'', ' *  Copyright (C) ' .. year .. ' Command_maker'}),
        t({'', ' *'}),
        t({'', ' * This program is free software: you can redistribute it and/or modify'}),
        t({'', ' * it under the terms of the GNU General Public License as published by'}),
        t({'', ' * the Free Software Foundation, either version 3 of the License, or'}),
        t({'', ' * (at your option) any later version.'}),
        t({'', ' * This program is distributed in the hope that it will be useful,'}),
        t({'', ' * but WITHOUT ANY WARRANTY; without even the implied warranty of'}),
        t({'', ' * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the'}),
        t({'', ' * GNU General Public License for more details.'}),
        t({'', ' *'}),
        t({'', ' * You should have received a copy of the GNU General Public License'}),
        t({'', ' * along with this program.  If not, see <http://www.gnu.org/licenses/>.'}),
        t({'', ' */', ''}),
    })
})
