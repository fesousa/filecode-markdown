import re
import sys
from datetime import datetime
with open(f'/github/workspace/README.md', 'r') as readme:
    content = readme.read()
    subs = re.findall(r'```.*?\n(\$\{.*?\})\n```', content)
    for s in subs:
        file = s[2:-1]
        print(file)
        with open(file) as f:
            content = content.replace(s, f.read())
    content = content.replace("{{update}}", f"\nLast update: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    
with open(f'/github/workspace/README.md', 'w') as readme:    
    readme.write(content)
