package main

import (
	"fmt"
	"log/slog"
	"os"
	"path/filepath"
)

func linkConfig(src, configDir string) error {
	_ = os.Remove(configDir)

	if err := os.Symlink(src, configDir); err != nil {
		return fmt.Errorf("ошибка при создании symlink: %s, err: %s", src, err.Error())
	}

	slog.Info("Symlink создан", slog.String("from", src), slog.String("to", configDir))
	return nil
}

func main() {
	slog.Info("Идет установка конфигов")

	execPath, err := os.Executable()
	if err != nil {
		slog.Error("Не найден исполняемый файл")
		return
	}

	repoPath := filepath.Dir(execPath)

	configs := map[string]string{
		"nvim": filepath.Join(repoPath, "resources", "nvim"),
	}

	homeDir, err := os.UserHomeDir()
	if err != nil {
		slog.Error("Не удалось получить домашнюю директорию")
		return
	}

	for name, src := range configs {
		configDir := filepath.Join(homeDir, ".config", name)
		if err := linkConfig(src, configDir); err != nil {
			slog.Error("Ошибка при установке", slog.String("name", name), slog.String("error", err.Error()))
		}
	}

	slog.Info("Установка конфигов закочена")
}
