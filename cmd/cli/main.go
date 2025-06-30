package main

import (
	"errors"
	"fmt"
	"log/slog"
	"os"
	"path/filepath"
)

func createSymlink(target, link string) error {
	_ = os.Remove(link)

	if err := os.Symlink(target, link); err != nil {
		return fmt.Errorf("ошибка при создании symlink: %w", err)
	}

	slog.Info("symlink создан", slog.String("link", link))
	return nil
}

func getExecutableDir() (string, error) {
	exec, err := os.Executable()
	if err != nil {
		return "", errors.New("не удалось определить путь к исполняемому файлу")
	}

	return filepath.Dir(exec), nil
}

func main() {
	slog.Info("Идет установка конфигов")

	repositoryDir, err := getExecutableDir()
	if err != nil {
		slog.Error(err.Error())
	}

	homeDir, err := os.UserHomeDir()
	if err != nil {
		slog.Error("Не удалось получить домашнюю директорию")
		return
	}

	configs := map[string]string{
		"nvim": filepath.Join(repositoryDir, "resources", "nvim"),
		"alacritty": filepath.Join(repositoryDir, "resources", "alacritty"),
	}

	for name, source := range configs {
		configDir := filepath.Join(homeDir, ".config", name)
		if err := createSymlink(source, configDir); err != nil {
			slog.Error(err.Error())
		}
	}

	slog.Info("Установка конфигов закочена")
}
