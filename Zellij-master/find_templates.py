import os

def find_child_templates(parent_template, templates_directory):
    child_templates = []
    for root, dirs, files in os.walk(templates_directory):
        for file in files:
            if file.endswith('.html'):
                template_path = os.path.join(root, file)
                with open(template_path, 'r') as f:
                    content = f.read()
                    if parent_template in content:
                        child_templates.append(template_path)
    return child_templates

parent_template = 'big.html'
templates_directory = 'website/static/templates'  # Replace with your actual path

child_templates = find_child_templates(parent_template, templates_directory)

for child_template in child_templates:
    print(child_template)

