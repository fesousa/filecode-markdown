import re
import sys
with open(f'/home/home/README.template.md', 'r') as readme:
    content = readme.read()
    subs = re.findall(r'```.*?\n(\$\{.*?\})\n```', content)
    for s in subs:
        file = s[2:-1]
        print(file)
        with open(file) as f:
            content = content.replace(s, f.read())
    
with open(f'/home/home/README.md', 'w') as readme:    
    readme.write(content)