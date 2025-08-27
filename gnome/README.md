# My White GNOME Setup

Minimal white GNOME rice for Arch Linux, perfect for r/unixporn.

![Preview](../wallpapers/preview.png)

## Quick Install
```bash
cd dotfiles/gnome
./install-gnome-rice.sh
```

## Theme Details
- **GTK Theme**: WhiteSur-Light
- **Shell Theme**: WhiteSur-Light  
- **Icons**: WhiteSur
- **Cursor**: Adwaita
- **Accent Color**: Teal
- **Fonts**: Liberation Sans Light / JetBrains Mono

## Essential Extensions
- **User Themes** - Enable custom shell themes
- **Blur my Shell** - Glass effects
- **Just Perfection** - Clean UI, hide activities button
- **Rounded Window Corners** - Modern soft corners
- **Panel Corners** - Rounded top bar
- **Dash to Dock** - Elegant dock

## Extension Configuration

### Blur my Shell:
```
Panel: Sigma 10, Brightness 0.98, Static blur ON
Overview: Sigma 25, Brightness 0.85
Applications: Sigma 10, Brightness 0.98
```

### Just Perfection:
```
Activities Button: Hide
Panel Size: 36px
Panel in Overview: Hide
```

### Dash to Dock:
```
Position: Bottom
Panel Mode: ON
Glass Effect: ON
Height: 46px, Icon size: 40px
Transparency: 0.2
```

## Wallpaper Strategy
Nature minimal wallpapers focusing on:
- Mountain landscapes with white/snow
- Clean beach scenes with white sand
- Minimal cloud formations
- Winter scenes with lots of white space

## Restore Configuration
```bash
# Restore all GNOME settings
dconf load /org/gnome/ < gnome/settings/gnome-all.conf

# Or restore only extensions  
dconf load /org/gnome/shell/extensions/ < gnome/extensions/extensions.conf

# Apply accent color
gsettings set org.gnome.desktop.interface accent-color 'teal'
```

## Package Dependencies
```bash
# Core packages
sudo pacman -S gnome-tweaks gnome-browser-connector
yay -S extension-manager gradience-git

# Fonts
sudo pacman -S ttf-liberation ttf-jetbrains-mono ttf-roboto

# Themes (installed via script)
WhiteSur-gtk-theme (GitHub)
WhiteSur-icon-theme (GitHub)
```

## r/unixporn Tips
- Take screenshots with terminal + file manager open
- Use nature minimal wallpapers for clean look
- Keep desktop completely empty
- Focus on typography and spacing
- Glass effects add premium feel

## Credits
Inspired by the amazing r/unixporn community and WhiteSur theme creators.
