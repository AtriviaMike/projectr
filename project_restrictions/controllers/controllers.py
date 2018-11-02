# -*- coding: utf-8 -*-
from odoo import http

# class ProjectRestrictions(http.Controller):
#     @http.route('/project_restrictions/project_restrictions/', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/project_restrictions/project_restrictions/objects/', auth='public')
#     def list(self, **kw):
#         return http.request.render('project_restrictions.listing', {
#             'root': '/project_restrictions/project_restrictions',
#             'objects': http.request.env['project_restrictions.project_restrictions'].search([]),
#         })

#     @http.route('/project_restrictions/project_restrictions/objects/<model("project_restrictions.project_restrictions"):obj>/', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('project_restrictions.object', {
#             'object': obj
#         })