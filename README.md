# lo48576 overlay

This is @lo48576's personal overlay.

## How to use
### Use `app-portage/layman`
For detail, see https://wiki.gentoo.org/wiki/Layman#Adding_custom_overlays .

```
layman -o https://raw.github.com/lo48576/lo48576-portage-overlay/master/repositories.xml -f -a lo48576-overlay
```

### Manually edit repository config
For detail, see https://wiki.gentoo.org/wiki/Overlay/Local_overlay .

```
[lo48576-overlay]
priority = 50
location = /path/to/the/repository
masters = gentoo
```
