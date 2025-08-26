#!/bin/bash

# Script di installazione per dotfiles
# Crea symlink per le configurazioni

echo "Installazione dotfiles in corso..."

# Directory dei dotfiles
DOTFILES_DIR="$HOME/dotfiles"

# Verifica che la directory dotfiles esista
if [ ! -d "$DOTFILES_DIR" ]; then
    echo "Errore: Directory $DOTFILES_DIR non trovata!"
    echo "Assicurati di essere nella directory corretta"
    exit 1
fi

# Funzione per creare backup
create_backup() {
    local file=$1
    if [ -f "$file" ] || [ -L "$file" ]; then
        echo "Backup di $file -> ${file}.backup"
        mv "$file" "${file}.backup"
    fi
}

# Funzione per creare symlink
create_symlink() {
    local source=$1
    local target=$2
    local target_dir=$(dirname "$target")
    
    # Crea la directory se non esiste
    if [ ! -d "$target_dir" ]; then
        echo "Creo directory: $target_dir"
        mkdir -p "$target_dir"
    fi
    
    # Crea backup se il file esiste
    create_backup "$target"
    
    # Crea il symlink
    echo "Symlink: $source -> $target"
    ln -s "$source" "$target"
}

echo ""
echo "Installazione configurazioni..."

# Vim configuration
if [ -f "$DOTFILES_DIR/.vimrc" ]; then
    create_symlink "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
else
    echo "File .vimrc non trovato in $DOTFILES_DIR"
fi

# Ghostty configuration
if [ -f "$DOTFILES_DIR/.config/ghostty/config" ]; then
    create_symlink "$DOTFILES_DIR/.config/ghostty/config" "$HOME/.config/ghostty/config"
else
    echo "File ghostty config non trovato in $DOTFILES_DIR"
fi

echo ""
echo "Installazione completata!"
echo ""
echo "Per disinstallare:"
echo "   - Rimuovi i symlink: rm ~/.vimrc ~/.config/ghostty/config"
echo "   - Ripristina i backup: mv ~/.vimrc.backup ~/.vimrc (se esistente)"
echo ""
echo "I tuoi dotfiles sono ora attivi!"
