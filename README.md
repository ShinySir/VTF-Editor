edit of Mishcatt/VTF-Editor

docker compose.yaml thing (requires git and a web server)

```yaml
services:
  vtf-editor:
    image: purowolf/vtf-editor:latest
    container_name: vtf_editor
    volumes:
      - placefolderpathhere/VTF-Editor:/repo
    restart: unless-stopped
```

https://shinysir.github.io/VTF-Editor/
