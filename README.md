# Matteo's Dotfiles

Configurazioni personali per il mio ambiente di sviluppo su Arch (btw).

## Configurazioni incluse

### Vim (`.vimrc`)
Configurazione personalizzata per l'editor Vim con:
- Impostazioni di base per editing
- Mappature personalizzate
- Configurazioni per la sintassi

### Ghostty (`.config/ghostty/config`)
Configurazione per il terminale Ghostty:
- Tema e colori personalizzati
- Font e dimensioni
- Comportamento del terminale

## Installazione

### Clone del repository
```bash
git clone https://github.com/tuousername/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### Installazione automatica
```bash
chmod +x install.sh
./install.sh
```

Lo script creerà automaticamente:
- Backup dei file esistenti (`.backup`)
- Symlink verso le configurazioni

### Installazione manuale
```bash
# Vim
ln -s ~/dotfiles/.vimrc ~/.vimrc

# Ghostty
mkdir -p ~/.config/ghostty
ln -s ~/dotfiles/.config/ghostty/config ~/.config/ghostty/config
```

## Sistema

- **OS**: Arch Linux
- **Terminale**: Ghostty
- **Editor**: Vim

## Note

- I file di configurazione sono linkati simbolicamente, quindi le modifiche ai dotfiles si riflettono immediatamente
- I backup originali vengono salvati con estensione `.backup`

## Struttura

```
dotfiles/
├── .vimrc                    # Configurazione Vim
├── .config/
│   └── ghostty/
│       └── config            # Configurazione Ghostty
├── install.sh               # Script di installazione
└── README.md                # Questo file
```

## Contributi

Sentiti libero di utilizzare queste configurazioni come base per le tue!

---
*Ultimo aggiornamento: Agosto 2025*
