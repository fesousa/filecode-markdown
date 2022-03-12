import re
from datetime import datetime
with open(f'/github/workspace/template/README.template.md', 'r') as readme:
    content = readme.read()
    subs = re.findall(r'\s{0,12}```.*?\n\s{0,12}(\$\{.*?\})\n\s{0,12}```', content)
    for s in subs:
        file = s[2:-1]
        print(file)
        with open(file) as f:
            content = content.replace(s, f.read())
    content = content.replace("{{update}}", f"\nLast update: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    
with open(f'/github/workspace/README.md', 'w') as readme:    
    readme.write(content)
