# -*- coding: utf-8 -*-
{
    'name': "project restrictions",

    'summary': """
        module for restrict the project's groups
        """,

    'author': "Miguel Hiciano",
    'website': "atrivia.do",
    
    'category': 'Uncategorized',
    'version': '0.1',

    # any module necessary for this one to work correctly
    'depends': ['base',
                'account',
                'crm',
                'stock',
                'purchase',
                'sale'],

    # always loaded
    'data': [
        'security/restrictions.xml',
        'security/ir.model.access.csv',
        #'views/views.xml',
        #'views/templates.xml',
    ],
    # only loaded in demonstration mode
    'demo': [
        #'demo/demo.xml',
    ],

    'installable':True,
}